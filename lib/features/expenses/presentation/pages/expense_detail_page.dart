import 'package:dropdown_search/dropdown_search.dart';
import 'package:expense_manager/common/app_colors.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/core/utils/durations.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_routes.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../core/presentation/custom_textfield.dart';
import '../../../people/domain/entities/person_entity.dart';
import '../../../people/presentation/bloc/people_bloc.dart';
import '../bloc/edit_expense_bloc.dart';
import '../bloc/expense_bloc.dart';
import '../cubit/expense_input_cubit.dart';
import '../widgets/date_picker.dart';
import '../widgets/expense_type_widget.dart';

class ExpenseDetailPage extends StatefulWidget {
  const ExpenseDetailPage({super.key, required this.expenseEntity});

  final ExpenseEntity expenseEntity;
  @override
  State<ExpenseDetailPage> createState() => _ExpenseDetailPageState();
}

class _ExpenseDetailPageState extends State<ExpenseDetailPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _initInputs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).expense_detail_title),
      ),
      body: BlocListener<EditExpenseBloc, EditExpenseState>(
        listener: (context, state) {
          if (state is EditedExpenseState) {
            _onEditedExpense();
          }
          if (state is FailedEditingExpenseState) {
            _onFailedEditingExpense();
          }
        },
        child: BlocBuilder<PeopleBloc, PeopleState>(
          builder: (context, peopleState) {
            return BlocBuilder<ExpenseInputCubit, ExpenseInputState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.all(24.0),
                          children: [
                            CustomTextField(
                              controller: titleController,
                              decoration: InputDecoration(
                                  labelText: Strings.of(context).title_title),
                              onChanged: (t) {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(title: t);
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                    controller: amountController,
                                    decoration: InputDecoration(
                                      labelText:
                                          Strings.of(context).amount_title,
                                      suffixText:
                                          Strings.of(context).currency_symbol,
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (t) {
                                      final amount = double.tryParse(t);
                                      context
                                          .read<ExpenseInputCubit>()
                                          .update(amount: amount);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            peopleState.when(
                                initial: () {
                                  context
                                      .read<PeopleBloc>()
                                      .add(const PeopleEvent.getAll());
                                  return const SizedBox();
                                },
                                loading: () => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                loaded: (people) => Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 12,
                                            offset: Offset(0, 8),
                                            color: Colors.black12,
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: DropdownSearch<PersonEntity>(
                                              popupProps: PopupProps.dialog(
                                                searchFieldProps: TextFieldProps(
                                                    decoration: InputDecoration(
                                                        hintText: Strings.of(
                                                                context)
                                                            .search_people_hint_text)),
                                                showSearchBox: true,
                                              ),
                                              dropdownDecoratorProps:
                                                  DropDownDecoratorProps(
                                                dropdownSearchDecoration:
                                                    InputDecoration(
                                                  labelText: Strings.of(context)
                                                      .person_title,
                                                ),
                                              ),
                                              selectedItem: PersonEntity(
                                                displayName: widget
                                                        .expenseEntity
                                                        .personName ??
                                                    '',
                                                id: widget
                                                    .expenseEntity.personId,
                                              ),
                                              items: people,
                                              itemAsString: (item) =>
                                                  item.displayName,
                                              onChanged: (value) {
                                                context
                                                    .read<ExpenseInputCubit>()
                                                    .update(
                                                        personId: value!.id,
                                                        personName:
                                                            value.displayName);
                                              },
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pushNamed(context,
                                                    AppRoutes.addPerson);
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                                color: AppColors.primary,
                                              ))
                                        ],
                                      ),
                                    ),
                                failed: (message) {
                                  context
                                      .read<PeopleBloc>()
                                      .add(const PeopleEvent.getAll());
                                  return const SizedBox();
                                }),
                            const SizedBox(
                              height: 16,
                            ),
                            ExpenseTypeWidget(
                                selectedType: state.expenseType ??
                                    widget.expenseEntity.expenseType,
                                onChanged: (type) {
                                  context
                                      .read<ExpenseInputCubit>()
                                      .update(expenseType: type);
                                }),
                            const SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(isPaid: !(state.isPaid ?? false));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 12,
                                      offset: Offset(0, 8),
                                      color: Colors.black12,
                                    )
                                  ],
                                ),
                                child: ListTile(
                                  title: Text(
                                    Strings.of(context).has_paid_title,
                                    style: AppTextStyle.textStyle,
                                  ),
                                  trailing: AnimatedSwitcher(
                                    duration: Durations.animationDuration,
                                    child: Icon(
                                      key: ValueKey(state.isPaid ?? false),
                                      state.isPaid ?? false
                                          ? Icons.check_box_rounded
                                          : Icons
                                              .check_box_outline_blank_rounded,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            DatePicker(
                              onChange: (DateTime? date) {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(date: date);
                              },
                              init: state.date,
                              title: state.date?.getFullDateString ??
                                  Strings.of(context).date_title,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                _editExpenseHandler();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(Strings.of(context).submit_title),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _editExpenseHandler() {
    if (context.read<ExpenseInputCubit>().validate()) {
      context.read<EditExpenseBloc>().add(EditExpenseEvent.edit(context
          .read<ExpenseInputCubit>()
          .expense
          .copyWith(id: widget.expenseEntity.id)));
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        Strings.of(context).empty_field_error_message,
      );
    }
  }

  void _onEditedExpense() {
    if (mounted) {
      Navigator.pop(context);
    }
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
  }

  void _onFailedEditingExpense() {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).update_expense_error_message,
      retry: () {
        _editExpenseHandler();
      },
    );
  }

  void _initInputs() {
    titleController.text = widget.expenseEntity.description;
    amountController.text = widget.expenseEntity.price.toStringAsFixed(0);
    context.read<ExpenseInputCubit>().update(
        amount: widget.expenseEntity.price,
        expenseType: widget.expenseEntity.expenseType,
        personId: widget.expenseEntity.personId,
        personName: widget.expenseEntity.personName,
        title: widget.expenseEntity.description,
        isPaid: widget.expenseEntity.isPaid == 1,
        date: widget.expenseEntity.date);
  }
}
