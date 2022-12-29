import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../core/enums/enums.dart';
import '../../domain/entities/expense_entity.dart';

class PersonExpenseItem extends StatelessWidget {
  const PersonExpenseItem({
    super.key,
    required this.expense,
    required this.onTap,
  });
  final ExpenseEntity expense;
  final Function(ExpenseEntity) onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: expense.isPaid == 1 ? 0.4 : 1,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                offset: Offset(0, 8),
                color: Colors.black12,
              )
            ],
            color: AppColors.white),
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () => onTap(expense),
          child: ListTile(
            title: Text(
              expense.description,
              style: AppTextStyle.cardTitleTextStyle,
            ),
            // subtitle: Text(
            //   expense.personName ?? '',
            //   style: AppTextStyle.cardSubtitleTextStyle,
            // ),
            trailing: Text(
              '${expense.price.toStringAsFixed(0).threeDigit} ${Strings.of(context).currency_symbol}',
              style: AppTextStyle.amountTextStyle.copyWith(
                color: expense.expenseType == ExpenseType.credit
                    ? AppColors.green
                    : AppColors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
