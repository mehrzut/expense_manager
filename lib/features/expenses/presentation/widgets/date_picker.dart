import 'package:expense_manager/common/app_colors.dart';
import 'package:expense_manager/common/app_text_styles.dart';
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
    return Container(
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
      child: InkWell(
        onTap: () async {
          final date = await showDatePicker(
            context: context,
            initialDate: init ?? DateTime.now(),
            firstDate: DateTime(2010),
            lastDate: DateTime(2050),
          );
          onChange(date);
        },
        child: ListTile(
          title: Text(
            title,
            style: AppTextStyle.textStyle,
          ),
          trailing: const Icon(
            Icons.calendar_month,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
