import 'package:flutter/material.dart';

class AppTheme {
  // 🎨 Màu chính
  static const Color primary = Color(0xff4CAF6A);
  static const Color background = Color(0xffF5F7F6);
  static const Color card = Colors.white;

  // 🌙 Light Theme
  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: background,

    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      primary: primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 14),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
      ),
    ),
  );
}