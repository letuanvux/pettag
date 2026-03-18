import 'package:flutter/material.dart';
import 'navigation/bottom_nav.dart';
import 'core/theme/app_theme.dart';

class PetTagApp extends StatelessWidget {
  const PetTagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pet Tag",
      theme: AppTheme.light,
      home: const BottomNav(),
    );
  }
}
