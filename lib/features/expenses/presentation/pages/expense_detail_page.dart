import 'package:dropdown_search/dropdown_search.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_routes.dart';
import '../../../../common/app_strings.dart';
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
                          padding: const EdgeInsets.all(24.0),
                          children: [
                            TextFormField(
                              initialValue: widget.expenseEntity.description,
                              decoration: InputDecoration(
                                  labelText: Strings.of(context).title_title),
                              onChanged: (t) {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(title: t);
                              },
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    initialValue: widget.expenseEntity.price
                                        .toStringAsFixed(0),
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
                              height: 8,
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
                                loaded: (people) => Row(
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
                                              displayName: widget.expenseEntity
                                                      .personName ??
                                                  '',
                                              id: widget.expenseEntity.personId,
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
                                              Navigator.pushNamed(
                                                  context, AppRoutes.addPerson);
                                            },
                                            icon: const Icon(Icons.add))
                                      ],
                                    ),
                                failed: (message) {
                                  context
                                      .read<PeopleBloc>()
                                      .add(const PeopleEvent.getAll());
                                  return const SizedBox();
                                }),
                            const SizedBox(
                              height: 8,
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
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(isPaid: !(state.isPaid ?? false));
                              },
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(Strings.of(context).has_paid_title),
                                    Checkbox(
                                        value: state.isPaid ??
                                            widget.expenseEntity.isPaid == 1,
                                        onChanged: (v) {
                                          context
                                              .read<ExpenseInputCubit>()
                                              .update(isPaid: v);
                                        }),
                                  ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            DatePicker(
                              onChange: (DateTime? date) {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(date: date);
                              },
                              init:state.date,
                              title: state.date?.getFullDateString ??
                                  Strings.of(context).date_title,
                            ),
                            const SizedBox(
                              height: 8,
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
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
    if (mounted) {
      Navigator.pop(context);
    }
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
    context.read<ExpenseInputCubit>().update(
          amount: widget.expenseEntity.price,
          expenseType: widget.expenseEntity.expenseType,
          personId: widget.expenseEntity.personId,
          personName: widget.expenseEntity.personName,
          title: widget.expenseEntity.description,
          date: widget.expenseEntity.date
        );
  }
}
