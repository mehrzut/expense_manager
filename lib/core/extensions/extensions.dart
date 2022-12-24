import 'package:flutter/material.dart';

extension ScaffoldMessengerStateExtension on ScaffoldMessengerState {
  showErrorSnack(String error, {Function()? retry}) {
    showSnackBar(SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.red,
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
                  style: const TextStyle(color: Colors.white),
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
        backgroundColor: Colors.green,
        content: Row(
          children: [
            Text(
              message,
              style: const TextStyle(color: Colors.black),
            )
          ],
        )));
  }
}

extension StringExtensions on String {
  String get threeDigit {
    String t = this;
    for (int i = 1; i * 4 <= t.length; i++) {
      t = t.insert(length - (i * 3), ',');
    }
    return t;
  }

  String insert(int index, String text) {
    return substring(0, index) + text + substring(index);
  }
}

extension DateTimeExt on DateTime? {
  String get getFullDateString {
    if (this == null) return '';
    final d = this!;
    return '${d.year}/${d.month}/${d.day}';
  }
}
