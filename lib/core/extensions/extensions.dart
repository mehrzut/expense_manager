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
