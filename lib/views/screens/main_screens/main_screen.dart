import 'package:e_commerce_app/views/screens/main_screens/category_screen.dart';
import 'package:e_commerce_app/views/screens/main_screens/home_screen.dart';
import 'package:e_commerce_app/views/screens/main_screens/notification_screen.dart';
import 'package:e_commerce_app/views/screens/main_screens/setting_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/main_screens_widgets/active_icon.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String route = "MainScreen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int selectedIndex = 0;
  static const List screens = [
    HomeScreen(),
    CategoryScreen(),
    NotificationScreen(),
    SettingScreen()
  ];
  static const List titles = [
    "Grocery Plus",
    "Category",
    "Notification",
    "Settings"
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            titles[selectedIndex],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: ActiveIcon(icon: Icons.home_outlined),
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: ActiveIcon(icon: Icons.category_outlined),
              icon: Icon(Icons.category_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: ActiveIcon(icon: Icons.notifications_active_outlined),
              icon: Icon(Icons.notifications_none),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: ActiveIcon(icon: Icons.menu_outlined),
              icon: Icon(Icons.menu_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
