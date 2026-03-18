import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PetDetailScreen extends StatelessWidget {
  const PetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pet Tag")),
      body: Center(
        child: QrImageView(
          data: "PET_TAG_SAMPLE",
          size: 220,
        ),
      ),
    );
  }
}