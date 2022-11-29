import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData dark = ThemeData(
      primaryColor: const Color.fromARGB(255, 78, 0, 138),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        centerTitle: true,
      ));
}
