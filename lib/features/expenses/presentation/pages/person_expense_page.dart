import 'package:expense_manager/common/app_strings.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:expense_manager/features/expenses/presentation/bloc/person_expense_bloc.dart';
import 'package:expense_manager/features/people/domain/entities/person_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/app_routes.dart';
import '../../../../core/enums/enums.dart';

class PersonExpensePage extends StatefulWidget {
  const PersonExpensePage({super.key, required this.personEntity});
  final PersonEntity personEntity;

  @override
  State<PersonExpensePage> createState() => _PersonExpensePageState();
}

class _PersonExpensePageState extends State<PersonExpensePage> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.personEntity.displayName),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.addExpense,
              arguments: widget.personEntity);
        },
        label: Row(
          children: [
            Text(Strings.of(context).add_title),
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.attach_money_rounded),
          ],
        ),
      ),
      body: BlocListener<PersonExpenseBloc, PersonExpenseState>(
        listener: (context, state) {
          if (state is FailedGetPersonExpenses) {
            _failedGetPersonExpensesHandler(context);
          }
        },
        child: BlocBuilder<PersonExpenseBloc, PersonExpenseState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (expenses) => expenses.isNotEmpty
                ? ListView.builder(
                    itemCount: expenses.length,
                    itemBuilder: (context, index) => Opacity(
                      opacity: expenses[index].isPaid == 1 ? 0.4 : 1,
                      child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.expenseDetail,
                                arguments: expenses[index]);
                          },
                          title: Text(
                              '${expenses[index].description} - ${expenses[index].personName ?? ''}'),
                          trailing: Text(
                            '${expenses[index].price.toStringAsFixed(0)} ${Strings.of(context).currency_symbol}',
                            style: TextStyle(
                              color: expenses[index].expenseType ==
                                      ExpenseType.credit
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: Text(Strings.of(context).empty_list_message),
                  ),
            failed: (message) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(Strings.of(context).get_data_error_message)),
                TextButton(
                  onPressed: () => getData(),
                  child: Text(Strings.of(context).retry_title),
                )
              ],
            ),
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    );
  }

  void _failedGetPersonExpensesHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      Strings.of(context).get_data_error_message,
      retry: () {
        getData();
      },
    );
  }

  void getData() {
    context
        .read<PersonExpenseBloc>()
        .add(PersonExpenseEvent.get(widget.personEntity.id ?? 0));
  }
}
