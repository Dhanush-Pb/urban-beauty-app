import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Import Cupertino icons
import 'package:urbar_culture/view/colors/app_color.dart';
import 'package:urbar_culture/view/daily_skincare.dart';
import 'package:urbar_culture/view/streak_page.dart';

class Bootmnavepage extends StatefulWidget {
  const Bootmnavepage({super.key});

  @override
  State<Bootmnavepage> createState() => _BootmnavepageState();
}

class _BootmnavepageState extends State<Bootmnavepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const Skincarepage(), StreakPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bagroundtheme,
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24.0, // Adjust icon size to reduce gap
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        selectedFontSize: 15,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: AppColor.bagroundtheme,
        selectedItemColor: AppColor.subtitilcolor, // Color of the selected item
        unselectedItemColor: AppColor.subtitilcolor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Routine',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2),
            label: 'Streaks',
          ),
        ],
        showSelectedLabels: true, // Show labels
        showUnselectedLabels: true, // Show unselected labels
      ),
    );
  }
}
