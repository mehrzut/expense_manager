import 'package:dropdown_search/dropdown_search.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/create_expense_bloc.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/expense_bloc.dart';
import 'package:expense_manager/features/expenses/presentation/cubit/expense_input_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../people/domain/entities/person_entity.dart';
import '../../../people/presentation/bloc/people_bloc.dart';
import '../widgets/expense_type_widget.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense'),
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
                          padding: const EdgeInsets.all(24.0),
                          children: [
                            TextField(
                              decoration:
                                  const InputDecoration(labelText: 'Title'),
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
                                  flex: 4,
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        labelText: 'Amount'),
                                    keyboardType: TextInputType.number,
                                    onChanged: (t) {
                                      final amount = double.tryParse(t);
                                      context
                                          .read<ExpenseInputCubit>()
                                          .update(amount: amount);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        labelText: 'Currency'),
                                    onChanged: (t) {
                                      context
                                          .read<ExpenseInputCubit>()
                                          .update(currency: t);
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
                                loaded: (people) =>
                                    DropdownSearch<PersonEntity>(
                                      popupProps: const PopupProps.dialog(
                                        searchFieldProps: TextFieldProps(
                                            decoration: InputDecoration(
                                                hintText: 'Search people...')),
                                        showSearchBox: true,
                                      ),
                                      dropdownDecoratorProps:
                                          const DropDownDecoratorProps(
                                        dropdownSearchDecoration:
                                            InputDecoration(
                                          labelText: "Person",
                                        ),
                                      ),
                                      items: people,
                                      itemAsString: (item) => item.displayName,
                                      onChanged: (value) {
                                        context
                                            .read<ExpenseInputCubit>()
                                            .update(personId: value!.id);
                                        context
                                            .read<ExpenseInputCubit>()
                                            .update(
                                                personName: value.displayName);
                                      },
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
                                selectedType: state.expenseType,
                                onChanged: (type) {
                                  context
                                      .read<ExpenseInputCubit>()
                                      .update(expenseType: type);
                                }),
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
                                _createExpenseHandler(context);
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('Submit'),
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

  void _createExpenseHandler(BuildContext context) {
    if (context.read<ExpenseInputCubit>().validate()) {
      context.read<CreateExpenseBloc>().add(
          CreateExpenseEvent.create(context.read<ExpenseInputCubit>().expense));
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        'Please fill empty fields.',
      );
    }
  }

  void _onCreatedExpense() {
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    if (mounted) {
      Navigator.pop(context);
    }
  }

  void _onFailedCreatingExpense() {
    ScaffoldMessenger.of(context).showErrorSnack(
      "Couldn't create expense! try again.",
      retry: () {
        _createExpenseHandler(context);
      },
    );
  }
}
