import 'package:expense_manager/common/app_colors.dart';
import 'package:expense_manager/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpenseTypeWidget extends StatelessWidget {
  const ExpenseTypeWidget({super.key, required this.onChanged});
  final Function(ExpenseType) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TypeButton(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12),
          ),
          text: 'Debt',
          isSelected: true,
          onTap: () {},
        ),
        SizedBox(
          width: 1,
        ),
        _TypeButton(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(12),
          ),
          text: 'Credit',
          isSelected: false,
          onTap: () {},
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
                  ? Theme.of(context).primaryColor.withOpacity(0.7)
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
