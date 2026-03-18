import 'package:flutter/material.dart';

class BatteryCard extends StatelessWidget {
  const BatteryCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: const [

            Icon(Icons.battery_full),

            SizedBox(width: 10),

            Text(
              "Battery 82%",
              style: TextStyle(
                fontSize: 16,
              ),
            )

          ],
        ),
      ),
    );
  }
}
