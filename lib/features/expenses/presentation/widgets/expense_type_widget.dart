import 'package:expense_manager/common/app_colors.dart';
import 'package:expense_manager/common/app_text_styles.dart';
import 'package:expense_manager/core/enums/enums.dart';
import 'package:flutter/material.dart';

import '../../../../common/app_strings.dart';
import '../../../../core/utils/durations.dart';

class ExpenseTypeWidget extends StatelessWidget {
  const ExpenseTypeWidget(
      {super.key, required this.onChanged, required this.selectedType});
  final Function(ExpenseType) onChanged;
  final ExpenseType? selectedType;

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
      child: Row(
        children: [
          _TypeButton(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(4),
              right: Radius.circular(4),
            ),
            text: Strings.of(context).debt_title,
            isSelected: selectedType == ExpenseType.debt,
            color: AppColors.red,
            backgroundColor: AppColors.lightRed,
            onTap: () {
              onChanged(ExpenseType.debt);
            },
          ),
          _TypeButton(
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(4),
              left: Radius.circular(4),
            ),
            text: Strings.of(context).credit_title,
            isSelected: selectedType == ExpenseType.credit,
            color: AppColors.green,
            backgroundColor: AppColors.lightGreen,
            onTap: () {
              onChanged(ExpenseType.credit);
            },
          ),
        ],
      ),
    );
  }
}

class _TypeButton extends StatelessWidget {
  const _TypeButton({
    required this.borderRadius,
    required this.isSelected,
    required this.text,
    required this.onTap,
    required this.color,
    required this.backgroundColor,
  });
  final BorderRadius borderRadius;
  final bool isSelected;
  final String text;
  final Color color;
  final Color backgroundColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: AnimatedContainer(
          duration: Durations.animationDuration,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? backgroundColor : AppColors.white,
            border: Border.all(
              color: isSelected ? color : Colors.transparent,
              width: 2,
            ),
            borderRadius: borderRadius,
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyle.textStyle.copyWith(
                color: isSelected ? color : AppColors.primary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
