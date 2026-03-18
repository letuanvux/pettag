import 'package:flutter/material.dart';
import 'routes/app_router.dart';
import 'theme/app_theme.dart';

class PetTagApp extends StatelessWidget {
  const PetTagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pet Tag",
      theme: AppTheme.light,
      onGenerateRoute: AppRouter.generate,
      initialRoute: "/",
    );
  }
}
