import 'package:flutter/material.dart';
import 'package:flutter_drawer/home_screen.dart';
import 'package:flutter_drawer/menu_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: ZoomDrawerController(),
        menuScreen: const MenuScreen(),
        mainScreen: const HomeScreen(),
        showShadow: true,
        style: DrawerStyle.defaultStyle,
        angle: 0.0,
        menuBackgroundColor: Colors.orange);
  }
}
