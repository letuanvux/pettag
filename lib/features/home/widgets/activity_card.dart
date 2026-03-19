// lib/widgets/activity_card.dart
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  

  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
      )
    ],
  ),
  child: Column(
    children: [

      // 🔥 WALK
      _activityRow(
        icon: Icons.pets,
        bgColor: Color(0xffFFF3E0),
        iconColor: Color(0xffFF9800),
        title: "Walk",
        value: "1.8 km",
      ),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Divider(color: Colors.grey.shade300),
      ),

      // 🔥 RUN
      _activityRow(
        icon: Icons.directions_run,
        bgColor: Color(0xffFFECE6),
        iconColor: Color(0xffFF5722),
        title: "Run",
        value: "20 min",
      ),
    ],
  ),
);
  }
}

Widget _activityRow({
  required IconData icon,
  required Color bgColor,
  required Color iconColor,
  required String title,
  required String value,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          // 🎯 Icon tròn nền
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),

          SizedBox(width: 10),

          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),

      Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade700,
        ),
      ),
    ],
  );
}

Widget _activityItem({
    required IconData icon,
    required Color color,
    required String title,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: color),
            SizedBox(width: 8),
            Text(title),
          ],
        ),
        Text(value),
      ],
    );
  }