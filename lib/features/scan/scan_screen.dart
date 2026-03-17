import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scan Tag")),
      body: MobileScanner(
        onDetect: (barcode, args) {
          final code = value.displayValue ?? 'No display value.';
          debugPrint("Scanned: $code");
        },
      ),
    );
  }
}
