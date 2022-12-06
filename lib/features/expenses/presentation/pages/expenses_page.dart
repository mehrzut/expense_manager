import 'package:expense_manager/common/app_routes.dart';
import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/expense_bloc.dart';

class ExpensesPage extends StatefulWidget {
  @override
  createState() => _ExpensesPage();
}

class _ExpensesPage extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.add_expense);
        },
        label: Row(
          children: const [
            Text('Add'),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.attach_money_rounded),
          ],
        ),
      ),
      body: BlocListener<ExpenseBloc, ExpenseState>(
        listener: (context, state) {
          if (state is FailedGetActiveExpenses) {
            _failedGetActiveExpensesHandler(context);
          }
        },
        child: BlocBuilder<ExpenseBloc, ExpenseState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (expenses) => expenses.isNotEmpty
                ? ListView.builder(
                    itemCount: expenses.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Center(
                            child: Text(expenses[index].id.toString()),
                          ),
                        ),
                        title: Text(expenses[index].description),
                      ),
                    ),
                  )
                : const Center(
                    child: Text('List is empty!'),
                  ),
            failed: (message) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text("Could't get data! try again.")),
                TextButton(
                  onPressed: () => getData(context),
                  child: const Text('Retry'),
                )
              ],
            ),
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    );
  }

  void _failedGetActiveExpensesHandler(BuildContext context) {
    ScaffoldMessenger.of(context).showErrorSnack(
      "Could't get data! try again.",
      retry: () {
        getData(context);
      },
    );
  }

  void getData(BuildContext context) {
    context.read<ExpenseBloc>().add(const ExpenseEvent.getAll());
  }
}
