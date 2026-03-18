import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.green,
    scaffoldBackgroundColor: const Color(0xFFF5F7FA),
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

}