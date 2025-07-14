// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/home/home_screen.dart';
import 'package:flutter_app_demo/view/screens/momo_screen.dart';
import 'package:flutter_app_demo/view/screens/more_screen.dart';
import 'package:flutter_app_demo/view/screens/shop_screen.dart';
import '../../utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTN App Clone',
      theme: ThemeData(
        primaryColor: kMtnYellow,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Helvetica', // Or any other clean sans-serif font
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: kMtnBlack),
          titleTextStyle: TextStyle(
              color: kMtnBlack, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: kMtnYellow,
          unselectedItemColor: kDeepGrey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const WidgetTree(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ShopScreen(),
    MoMoScreen(),
    MoreScreen(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
          // Using a simple icon for MoMo
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'MoMo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: kMtnYellow,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}