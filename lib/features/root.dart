import 'package:flutter/material.dart';
import 'home/home_screen.dart';
import 'map/map_screen.dart';
import 'activity/activity_screen.dart';
import 'community/community_screen.dart';
import 'profile/profile_screen.dart';
import 'shared/bottom_nav.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    MapScreen(),
    ActivityScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      // 👇 Bottom Nav custom
      bottomNavigationBar: CustomBottomNav(
        index: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}