import 'package:flutter/material.dart';
import 'widgets/pet_card.dart';
import 'widgets/activity_card.dart';
import 'widgets/battery_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Hello, Minh 👋"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          PetCard(),

          SizedBox(height: 16),

          ActivityCard(),

          SizedBox(height: 16),

          BatteryCard(),

        ],
      ),
    );
  }
}
