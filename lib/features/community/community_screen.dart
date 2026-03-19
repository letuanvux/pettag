import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Community")),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.pets)),
            title: Text("Bella"),
            subtitle: Text("1 km away"),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.pets)),
            title: Text("Milo"),
            subtitle: Text("500 m away"),
          ),
        ],
      ),
    );
  }
}