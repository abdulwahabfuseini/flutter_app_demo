import 'package:flutter/material.dart';
import 'package:flutter_app_demo/data/notifiers.dart';
import 'package:flutter_app_demo/view/pages/cards/cards_page.dart';
import 'package:flutter_app_demo/view/pages/help/help_page.dart';
import 'package:flutter_app_demo/view/pages/home/home_page.dart';
import 'package:flutter_app_demo/view/pages/more/more_page.dart';
import 'package:flutter_app_demo/view/pages/payments/payments_page.dart';
import 'package:flutter_app_demo/view/screens/account.dart';

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
    const MorePage()
  ];

  int _selectedItem = 0;

  void onTapedItem(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder(
    //   valueListenable: isDarkModeNotifier,
    //   builder: (context, isDarkMode, child) {
    //
    //   },
    // );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      // drawer: Drawer(),
      // appBar: AppBar(
      //   title: Text("Hello Man"),
      //   leading: Icon(Icons.menu),
      //   elevation: 2,
      //   actions: [
      //     IconButton(onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return Account();
      //       },));
      //     }, icon: Icon(Icons.notifications)),
      //     IconButton(
      //       onPressed: () {
      //         isDarkModeNotifier.value = !isDarkModeNotifier.value;
      //       },
      //       icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
      //     ),
      //   ],
      // ),
      body: appScreens[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapedItem,
        currentIndex: _selectedItem,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        // showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search_sharp),
            label: "Payments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            activeIcon: Icon(Icons.credit_score_sharp),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_sharp),
            activeIcon: Icon(Icons.help),
            label: "Help",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: "More",
          ),
        ],
      ),
    );
  }
}
