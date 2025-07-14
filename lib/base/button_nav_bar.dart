import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/home/home_screen.dart';
import 'package:flutter_app_demo/view/screens/profile_screen.dart';
import 'package:flutter_app_demo/view/screens/search_screen.dart';
import 'package:flutter_app_demo/view/screens/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  int _selectedItem = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {},),
        title: Text("My App"),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {},),
          IconButton(icon: Icon(Icons.search), onPressed: () {},),
        ],
        elevation: 20,
        backgroundColor: Colors.white,
      ),
      body: appScreen[_selectedItem],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: BottomNavigationBar(
          onTap: onItemTapped,
          currentIndex: _selectedItem,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined),
              activeIcon: Icon(Icons.airplane_ticket),
              label: "Ticket",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
