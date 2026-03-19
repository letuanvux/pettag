import 'package:flutter/material.dart';

class AppStyle {
  // 🎨 Colors
  static const primary = Color(0xff4CAF6A);
  static const bg = Color(0xffF5F7F6);
  static const text = Color(0xff1C1C1C);

  // 🌈 Gradient
  static const greenGradient = LinearGradient(
    colors: [Color(0xff5FCF80), Color(0xff4CAF6A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // 📦 Card Style
  static BoxDecoration card = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 10),
    ],
  );

  // 🟢 Button
  static BoxDecoration button = BoxDecoration(
    color: primary,
    borderRadius: BorderRadius.circular(14),
  );
}