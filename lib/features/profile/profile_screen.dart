import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F7F6),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                )
              ],
            ),
            child: Column(
              children: [

                // 🔥 HEADER
                _header(),

                // 👤 USER INFO
                _userInfo(),

                Divider(height: 1),

                // 📋 MENU
                _item(Icons.pets, "My Pets", Colors.green),
                _divider(),

                _item(Icons.notifications, "Tag Settings", Colors.red),
                _divider(),

                _item(Icons.notifications, "Notifications", Colors.orange),
                _divider(),

                _item(Icons.help, "Help & Support", Colors.blue),

              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔥 HEADER
  Widget _header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff5FCF80),
            Color(0xff4CAF6A),
          ],
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Icon(Icons.lock, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("assets/avatar.png"),
          )
        ],
      ),
    );
  }

  // 👤 USER INFO
  Widget _userInfo() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage("assets/avatar.png"),
          ),

          SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Minh Nguyen",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "minih@example.com",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }

  // 📋 MENU ITEM
  Widget _item(IconData icon, String title, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(color: Colors.grey.shade300),
    );
  }
}