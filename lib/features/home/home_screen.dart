import 'package:flutter/material.dart';
import 'widgets/pet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pet Tag Manager")),
      body: ListView(
        children: const [
          PetCard(name: "Bella", breed: "Golden Retriever", tagId: "829374"),
          PetCard(name: "Mimi", breed: "British Shorthair", tagId: "182930"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.pets),
      ),
    );
  }
}