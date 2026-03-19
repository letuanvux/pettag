// lib/screens/map/map_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  final LatLng pos = LatLng(21.0285, 105.8542);

  MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: pos,
              zoom: 14,
            ),
          ),

          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Column(
              children: [
                _btn("Start Tracking"),
                SizedBox(height: 10),
                _btn("Find Nearby"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _btn(String text) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xff4CAF6A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}