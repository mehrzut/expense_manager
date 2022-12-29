import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/app_text_styles.dart';
import '../../domain/entities/person_entity.dart';

class PersonItem extends StatelessWidget {
  final PersonEntity person;
  final Function(PersonEntity) onTap;
  const PersonItem({
    super.key,
    required this.person,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onTap: () => onTap(person),
        child: ListTile(
          title: Text(
            person.displayName,
            style: AppTextStyle.cardTitleTextStyle,
          ),
          trailing: Text(
            '${(person.totalAmount ?? 0).toStringAsFixed(0).threeDigit} ${Strings.of(context).currency_symbol}',
            style: AppTextStyle.amountTextStyle.copyWith(
              color: (person.totalAmount ?? 0).sign == -1
                  ? AppColors.red
                  : AppColors.green,
            ),
          ),
        ),
      ),
    );
    // return Card(
    //   child: ListTile(
    //     onTap: () {
    //       Navigator.pushNamed(context, AppRoutes.personExpense,
    //           arguments: person);
    //     },
    //     title: Text(person.displayName),
    //     trailing: Text(
    //       '${(person.totalAmount ?? 0).abs().toStringAsFixed(0).threeDigit} ${Strings.of(context).currency_symbol}',
    //       style: TextStyle(
    //         color: (person.totalAmount ?? 0).sign == -1
    //             ? Colors.red
    //             : Colors.green,
    //       ),
    //     ),
    //   ),
    // );
  }
}
