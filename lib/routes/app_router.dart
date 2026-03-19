import 'package:flutter/material.dart';
import '../features/home/home_screen.dart';
import '../features/pet/pet_detail_screen.dart';
import '../features/root.dart';
import '../features/scan/scan_screen.dart';

class AppRouter {
  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Root());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "/pet":
        return MaterialPageRoute(builder: (_) => const PetDetailScreen());
      case "/scan":
        return MaterialPageRoute(builder: (_) => const ScanScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}