import 'package:expense_manager/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/app_text_styles.dart';
import '../../domain/entities/person_entity.dart';

class PersonItem extends StatelessWidget {
  final PersonEntity person;
  final Function(PersonEntity) onTap;
  final Function(PersonEntity) onEditClick;
  final Function(PersonEntity) onCardNumberCopyClick;
  const PersonItem({
    super.key,
    required this.person,
    required this.onTap,
    required this.onEditClick,
    required this.onCardNumberCopyClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 8),
            color: Colors.black12,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Slidable(
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: 0.2,
            children: [
              SlidableAction(
                onPressed: (context) => onEditClick(person),
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                icon: Icons.edit_outlined,
              ),
            ],
          ),
          endActionPane: person.cardNumber == null || person.cardNumber!.isEmpty
              ? null
              : ActionPane(
                  motion: const ScrollMotion(),
                  extentRatio: 0.2,
                  children: [
                    SlidableAction(
                      onPressed: (context) => onCardNumberCopyClick(person),
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.white,
                      icon: Icons.credit_card_rounded,
                    ),
                  ],
                ),
          child: Container(
            decoration: const BoxDecoration(color: AppColors.white),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
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
          ),
        ),
      ),
    );
  }
}
