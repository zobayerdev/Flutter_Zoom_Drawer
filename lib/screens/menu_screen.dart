import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerList(Icons.home, "Home"),
          drawerList(Icons.payment, "Payment"),
          drawerList(Icons.card_travel, "Travel"),
          drawerList(Icons.star, "Rate us"),
          drawerList(Icons.logout, "Logout"),
        ],
      ),
    );
  }

  Widget drawerList(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
