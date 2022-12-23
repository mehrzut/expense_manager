import 'package:expense_manager/core/enums/enums.dart';
import 'package:flutter/material.dart';

import '../../../../common/app_strings.dart';

class ExpenseTypeWidget extends StatelessWidget {
  const ExpenseTypeWidget(
      {super.key, required this.onChanged, required this.selectedType});
  final Function(ExpenseType) onChanged;
  final ExpenseType? selectedType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TypeButton(
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(12),
          ),
          text: Strings.of(context).debt_title,
          isSelected: selectedType == ExpenseType.debt,
          onTap: () {
            onChanged(ExpenseType.debt);
          },
        ),
        const SizedBox(
          width: 1,
        ),
        _TypeButton(
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(12),
          ),
          text: Strings.of(context).credit_title,
          isSelected: selectedType == ExpenseType.credit,
          onTap: () {
            onChanged(ExpenseType.credit);
          },
        ),
      ],
    );
  }
}

class _TypeButton extends StatelessWidget {
  const _TypeButton({
    required this.borderRadius,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });
  final BorderRadius borderRadius;
  final bool isSelected;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: isSelected
                  ? Colors.lightBlue.withOpacity(0.7)
                  : Colors.white10,
              borderRadius: borderRadius),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
