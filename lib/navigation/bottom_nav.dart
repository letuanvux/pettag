import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/map_screen.dart';
import '../screens/activity_screen.dart';
import '../screens/community_screen.dart';
import '../screens/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int index = 0;

  final pages = [
    const HomeScreen(),
    const MapScreen(),
    const ActivityScreen(),
    const CommunityScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[index],

      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i){
          setState(() {
            index = i;
          });
        },
        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          NavigationDestination(
            icon: Icon(Icons.map),
            label: "Map",
          ),

          NavigationDestination(
            icon: Icon(Icons.pets),
            label: "Activity",
          ),

          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: "Community",
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}