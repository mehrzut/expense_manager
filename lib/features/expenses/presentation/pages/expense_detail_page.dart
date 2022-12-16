import 'package:dropdown_search/dropdown_search.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/expenses/domain/entities/expense_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../people/domain/entities/person_entity.dart';
import '../../../people/presentation/bloc/people_bloc.dart';
import '../bloc/edit_expense_bloc.dart';
import '../bloc/expense_bloc.dart';
import '../cubit/expense_input_cubit.dart';
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
        title: const Text('Expense Detail'),
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
                                  child: TextFormField(
                                    initialValue: widget.expenseEntity.price
                                        .toString()
                                        .split('.')
                                        .first,
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
                                  child: TextFormField(
                                    initialValue: widget.expenseEntity.currency,
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
                                      selectedItem: PersonEntity(
                                          id: widget.expenseEntity.personId,
                                          displayName:
                                              widget.expenseEntity.personName!),
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
                            ListTile(
                              title: const Text('Has paid?'),
                              trailing: Checkbox(
                                  value: state.isPaid ??
                                      widget.expenseEntity.isPaid == 1,
                                  onChanged: (v) {
                                    context
                                        .read<ExpenseInputCubit>()
                                        .update(isPaid: v);
                                  }),
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

  void _editExpenseHandler() {
    if (context.read<ExpenseInputCubit>().validate()) {
      context.read<EditExpenseBloc>().add(EditExpenseEvent.edit(context
          .read<ExpenseInputCubit>()
          .expense
          .copyWith(id: widget.expenseEntity.id)));
    } else {
      ScaffoldMessenger.of(context).showErrorSnack(
        'Please fill empty fields.',
      );
    }
  }

  void _onEditedExpense() {
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
    if (mounted) {
      Navigator.pop(context);
    }
  }

  void _onFailedEditingExpense() {
    ScaffoldMessenger.of(context).showErrorSnack(
      "Couldn't update expense! try again.",
      retry: () {
        _editExpenseHandler();
      },
    );
  }

  void _initInputs() {
    context.read<ExpenseInputCubit>().update(
          amount: widget.expenseEntity.price,
          currency: widget.expenseEntity.currency,
          expenseType: widget.expenseEntity.expenseType,
          personId: widget.expenseEntity.personId,
          personName: widget.expenseEntity.personName,
          title: widget.expenseEntity.description,
        );
  }
}
