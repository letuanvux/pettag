import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: const [

            Text(
              "Activity Today",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text("🐾 Walk: 1.8 km"),
            Text("🏃 Run: 20 min"),
            Text("😴 Sleep: 8h")

          ],
        ),
      ),
    );
  }
}
