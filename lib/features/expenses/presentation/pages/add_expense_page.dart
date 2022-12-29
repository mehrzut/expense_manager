import 'package:dropdown_search/dropdown_search.dart';
import 'package:expense_manager/common/app_colors.dart';
import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/create_expense_bloc.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/expense_bloc.dart';
import 'package:expense_manager/features/expenses/presentation/cubit/expense_input_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_strings.dart';
import '../../../../core/presentation/custom_textfield.dart';
import '../../../people/domain/entities/person_entity.dart';
import '../../../people/presentation/bloc/people_bloc.dart';
import '../widgets/date_picker.dart';
import '../widgets/expense_type_widget.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key, required this.personEntity});
  final PersonEntity? personEntity;

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  @override
  void initState() {
    super.initState();
    context.read<ExpenseInputCubit>().update(
        personName: widget.personEntity?.displayName,
        personId: widget.personEntity?.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.of(context).add_expense_title),
      ),
      body: BlocListener<CreateExpenseBloc, CreateExpenseState>(
        listener: (context, state) {
          if (state is CreatedExpense) {
            _onCreatedExpense();
          }
          if (state is FailedCreatingExpense) {
            _onFailedCreatingExpense();
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
                                              selectedItem: widget.personEntity,
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
                                selectedType: state.expenseType,
                                onChanged: (type) {
                                  context
                                      .read<ExpenseInputCubit>()
                                      .update(expenseType: type);
                                }),
                            const SizedBox(
                              height: 16,
                            ),
                            DatePicker(
                              onChange: (DateTime? date) {
                                context
                                    .read<ExpenseInputCubit>()
                                    .update(date: date);
                              },
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
                                _createExpenseHandler();
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

  void _createExpenseHandler() {
    if (context.read<ExpenseInputCubit>().validate()) {
      context.read<CreateExpenseBloc>().add(
          CreateExpenseEvent.create(context.read<ExpenseInputCubit>().expense));
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        Strings.of(context).empty_field_error_message,
      );
    }
  }

  void _onCreatedExpense() {
    if (mounted) {
      Navigator.pop(context);
    }
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    context.read<PeopleBloc>().add(const PeopleEvent.getAll());
  }

  void _onFailedCreatingExpense() {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).create_expense_error_message,
      retry: () {
        _createExpenseHandler();
      },
    );
  }
}
