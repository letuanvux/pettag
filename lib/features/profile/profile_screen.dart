import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Profile")),

      body: ListView(

        children: const [

          ListTile(
            leading: Icon(Icons.pets),
            title: Text("My Pets"),
          ),

          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text("Tag Settings"),
          ),

          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),

          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
          ),

        ],
      ),
    );
  }
}
