import 'package:expense_manager/common/app_routes.dart';
import 'package:flutter/material.dart';

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
          )),
    );
  }
}
