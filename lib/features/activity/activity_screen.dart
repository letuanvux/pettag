import 'package:flutter/material.dart';

import 'widgets/activity_chart.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("This Week", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Expanded(child: ActivityChart()),
          ],
        ),
      ),
    );
  }
}