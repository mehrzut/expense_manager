import 'package:flutter/material.dart';

import '../widgets/expense_type_widget.dart';

class AddExpensePage extends StatelessWidget {
  const AddExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expense'),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
        ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(labelText: 'Amount'),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Currency'),
              ),
            ),
          ],
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Person'),
        ),
        ExpenseTypeWidget(onChanged: (type) {}),
      ]),
    );
  }
}
