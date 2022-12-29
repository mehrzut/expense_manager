import 'package:expense_manager/common/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle cardTitleTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
  static const TextStyle cardSubtitleTextStyle = TextStyle(
    color: Colors.black54,
    fontSize: 12,
  );
  static const TextStyle amountTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle textFieldLabelStyle = TextStyle(
    fontSize: 12,
    color: AppColors.primary,
  );

  static const TextStyle textStyle = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
  );
}
