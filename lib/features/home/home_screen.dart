// lib/screens/home/home_screen.dart
import 'package:flutter/material.dart';
import 'widgets/pet_card.dart';
import 'widgets/activity_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7F6),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔥 Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, Minh 👋",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.pets, color: Colors.green),
                  )
                ],
              ),

              SizedBox(height: 16),

              // 🐶 Pet Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff5FCF80),
                      Color(0xff4CAF6A),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bella",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Golden Retriever",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                    // Image
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/dog.png"),
                    )
                  ],
                ),
              ),

              SizedBox(height: 16),

              // 📦 Status Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle, color: Colors.orange, size: 10),
                        SizedBox(width: 8),
                        Text("Last seen 5 min ago"),
                      ],
                    ),

                    SizedBox(height: 12),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xff4CAF6A),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Open Map",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 16),

              // 📊 Activity Title
              Text(
                "Activity Today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 12),

              // 📊 Activity Card
              ActivityCard(),

              SizedBox(height: 16),

              // 🔋 Progress
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff5FCF80),
                      Color(0xff4CAF6A),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(Icons.bolt, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      "82%",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),

                    Expanded(
                      child: LinearProgressIndicator(
                        value: 0.82,
                        backgroundColor: Colors.white24,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}