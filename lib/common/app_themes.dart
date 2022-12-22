import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData dark = ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blue,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.blue,
          onPrimary: Colors.white,
          secondary: Colors.blue,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Color.fromARGB(255, 46, 46, 46),
          onSurface: Colors.white),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        centerTitle: true,
      ));
}
