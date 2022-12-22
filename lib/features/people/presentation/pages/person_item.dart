import 'package:expense_manager/common/app_routes.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/person_entity.dart';

class PersonItem extends StatelessWidget {
  final PersonEntity person;
  const PersonItem({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.personExpense,
              arguments: person);
        },
        title: Text(person.displayName),
        trailing: Text(
          '${(person.totalAmount ?? 0).abs().toStringAsFixed(0)} T',
          style: TextStyle(
            color: (person.totalAmount ?? 0).sign == -1
                ? Colors.red
                : Colors.green,
          ),
        ),
      ),
    );
  }
}
