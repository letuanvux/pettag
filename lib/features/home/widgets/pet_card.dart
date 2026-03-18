import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String name;
  final String breed;
  final String tagId;

  const PetCard({
    super.key,
    required this.name,
    required this.breed,
    required this.tagId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.pets)),
        title: Text(name),
        subtitle: Text(breed),
        trailing: Text("Tag: $tagId"),
      ),
    );
  }
}