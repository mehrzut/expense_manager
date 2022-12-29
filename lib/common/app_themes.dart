import 'package:expense_manager/common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
      fontFamily: GoogleFonts.rubik().fontFamily,
      primaryColor: AppColors.primary,
      accentColor: AppColors.primary,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: Colors.white,
          secondary: AppColors.primary,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Color.fromARGB(255, 46, 46, 46),
          onSurface: AppColors.secondary),
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.scaffoldColor,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withOpacity(0.1),
        selectionHandleColor: AppColors.primary,
      ),
      inputDecorationTheme: const InputDecorationTheme(
          focusColor: AppColors.primary,
          suffixStyle: AppTextStyle.textStyle,
          suffixIconColor: AppColors.primary,
          prefixIconColor: AppColors.primary,
          iconColor: AppColors.primary,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          fillColor: AppColors.white,
          filled: true,
          labelStyle: AppTextStyle.textFieldLabelStyle),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll<Color>(AppColors.primary),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32)))),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.white,
          titleTextStyle: AppTextStyle.appBarTextStyle,
          elevation: 5.0,
          shadowColor: AppColors.primary.withOpacity(0.1),
          actionsIconTheme: const IconThemeData(
            color: AppColors.primary,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.primary,
          )),
      tabBarTheme: const TabBarTheme(
        labelColor: AppColors.primary,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
          ),
        ),
      ));
}
