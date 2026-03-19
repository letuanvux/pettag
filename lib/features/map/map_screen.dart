import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final LatLng pos = LatLng(21.0285, 105.8542);

  @override
  void initState() {
    super.initState();
    requestLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 140,
            pinned: true,
            backgroundColor: Colors.transparent,
            elevation: 0,

            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF4CAF50),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back, color: Colors.white),
                          const Text(
                            "Map",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(6),
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // CONTENT FAKE
          SliverToBoxAdapter(
            child: Stack(
              children: [
                GoogleMap(
                  myLocationEnabled: true, // 👈 hiện vị trí
                  myLocationButtonEnabled: true,
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
          )
        ],
      ),
    );
  }

  Future<void> requestLocation() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      await Geolocator.openAppSettings(); // 👈 mở setting
    }
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
