import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

extension ScaffoldMessengerStateExtension on ScaffoldMessengerState {
  showErrorSnack(String error, {Function()? retry}) {
    showSnackBar(SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.lightRed,
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 16,
                ),
                child: Text(
                  error,
                  style: const TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            retry != null
                ? InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      hideCurrentSnackBar();

                      retry();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.refresh,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        )));
  }

  showAlertSnack(String alert) {
    showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.orange,
        content: Row(
          children: [
            Text(
              alert,
              style: const TextStyle(color: Colors.black),
            )
          ],
        )));
  }

  showSuccessSnack(String message) {
    showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.lightGreen,
        content: Row(
          children: [
            Text(
              message,
              style: const TextStyle(
                color: AppColors.green,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        )));
  }
}

extension StringExtensions on String {
  String get threeDigit {
    final sign = startsWith('-') ? '-' : '';
    String t = replaceAll('-', '');
    for (int i = 1; i * 4 <= t.length; i++) {
      t = t.insert(t.length - (i * 3), ',');
    }
    return "$sign$t";
  }

  String insert(int index, String text) {
    return substring(0, index) + text + substring(index);
  }

  bool get isValidCardNo {
    return isEmpty || (replaceAll(' ', '').length == 16);
  }
}

extension DateTimeExt on DateTime? {
  String get getFullDateString {
    if (this == null) return '';
    final d = this!;
    return '${d.year}/${d.month}/${d.day}';
  }
}
