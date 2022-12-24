import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    super.key,
    required this.title,
    required this.onChange,
    this.init,
  });
  final String title;
  final DateTime? init;
  final Function(DateTime?) onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: init ?? DateTime.now(),
          firstDate: DateTime(2010),
          lastDate: DateTime(2050),
        );
        onChange(date);
      },
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: const Icon(Icons.calendar_month),
    );
  }
}
