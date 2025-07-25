import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/pages/cards/cards_page.dart';
import 'package:flutter_app_demo/view/pages/help/help_page.dart';
import 'package:flutter_app_demo/view/pages/home/home_page.dart';
import 'package:flutter_app_demo/view/pages/more/more_page.dart';
import 'package:flutter_app_demo/view/pages/payments/payments_page.dart';

const Color primaryColor = Color(0xFF3A4F5C);

class WidgetLayout extends StatefulWidget {
  const WidgetLayout({super.key});

  @override
  State<WidgetLayout> createState() => _WidgetLayoutState();
}

class _WidgetLayoutState extends State<WidgetLayout> {
  final appScreens = [
    const HomePage(),
    const PaymentsPage(),
    const CardsPage(),
    const HelpPage(),
    const MorePage(),
  ];

  int _selectedItem = 0;

  void onTapedItem(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This is the SINGLE Scaffold for your main app view.
    return Scaffold(
      // You might need to make this dynamic based on _selectedItem if other pages have different backgrounds.
      backgroundColor: primaryColor,

      body: SafeArea(child: appScreens[_selectedItem]),

      // The FAB and BottomAppBar belong to this main Scaffold
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.qr_code_scanner, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // The key fix is to provide an explicit height for the BottomAppBar
        // to contain the BottomNavigationBar with its labels.
        height: 88.0,
        padding: EdgeInsets.only(top: 30),
        // shape: const CircularNotchedRectangle(), // This will now work correctly
        // notchMargin: 8.0,                      // This will now work correctly
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 10,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: 'Help',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          currentIndex: _selectedItem,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: onTapedItem, // Use your existing method
          backgroundColor: Colors.transparent, // Keep this transparent
          elevation: 0, // Keep this 0 to prevent double shadows
        ),
      ),
    );
  }
}