import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/home_screen.dart';
import 'package:flutter_app_demo/view/screens/profile_screen.dart';
import 'package:flutter_app_demo/view/widgets/navbar.dart';

List<Widget> pages = [
  HomeScreen(),
  ProfileScreen()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Ticket"), backgroundColor: Colors.teal),
        body: pages.elementAt(0),
        bottomNavigationBar: Navbar()
    );
  }
}
