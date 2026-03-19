// lib/widgets/bottom_nav.dart
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  const CustomBottomNav({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _item(Icons.home, 0),
          _item(Icons.map, 1),
          _item(Icons.pets, 2),
          _item(Icons.people, 3),
          _item(Icons.person, 4),
        ],
      ),
    );
  }

  Widget _item(IconData icon, int i) {
    return GestureDetector(
      onTap: () => onTap(i),
      child: Icon(
        icon,
        color: index == i ? Colors.green : Colors.grey,
      ),
    );
  }
}