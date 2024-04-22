import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_outlined,
            color: Colors.white,
          ),

          // Open and close the drawer
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
        ),
        title: const Text(
          "Main Screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: [
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                "Home Screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                "Email Screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                "SMS Screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: waterdropper(),
    );
  }

  WaterDropNavBar waterdropper() {
    return WaterDropNavBar(
      bottomPadding: 5,
      backgroundColor: Colors.white,
      waterDropColor: Colors.black,
      selectedIndex: currentIndex,
      onItemSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      barItems: [
        BarItem(
            filledIcon: Icons.home_filled, outlinedIcon: Icons.home_outlined),
        BarItem(filledIcon: Icons.mail, outlinedIcon: Icons.email_outlined),
        BarItem(filledIcon: Icons.sms, outlinedIcon: Icons.sms_outlined),
      ],
    );
  }
}
