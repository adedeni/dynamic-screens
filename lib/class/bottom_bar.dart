import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:screens/screens/home.dart';
import 'package:screens/screens/login.dart';
import 'package:screens/utils/app_layout.dart';
import 'package:screens/utils/styles.dart';
import '../screens/settings.dart';
  
  class BottomBar extends StatefulWidget {
    const BottomBar({super.key});
@override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions =<Widget> [
    const Home(),
    const Settings(),
    const Login(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
           BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
             label: 'Dashboard',
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
             label: 'Settings',
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_key_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_key_filled),
             label: 'Login',
          )
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Styles.backgroundColor,
        unselectedItemColor: const Color(0xFF526480),
        elevation: AppLayout.getHeight(context, 10),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
