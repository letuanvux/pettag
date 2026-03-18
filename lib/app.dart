import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'navigation/bottom_nav.dart';

class PetTagApp extends StatelessWidget {
  const PetTagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Tag',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const BottomNav(),
    );
  }
}
