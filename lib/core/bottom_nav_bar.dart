import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_demo_app/screen/home/home_screen.dart';
import 'package:ticket_demo_app/screen/search_screen/search_screen.dart';
import 'package:ticket_demo_app/screen/ticket/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile")),
  ];

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    debugPrint("onItemTapped: $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.indigoAccent,
        unselectedItemColor: Colors.blueGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
              ),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
            ),
            label: "",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
            ),
            label: "",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            label: "",
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
            ),
          ),
        ],
      ),
    );
  }
}
