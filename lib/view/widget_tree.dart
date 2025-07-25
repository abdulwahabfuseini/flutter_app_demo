import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/pages/payments/payments_page.dart';
import 'package:flutter_app_demo/view/screens/home/home_screen.dart';
import 'package:flutter_app_demo/view/screens/more/more_screen.dart';
import 'package:flutter_app_demo/view/screens/momo/momo_screen.dart';
import 'package:flutter_app_demo/view/screens/shop/shop_screen.dart';
import '../../../utils/constants.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PaymentsPage(),
    ShopScreen(),
    MomoScreen(),
    MoreScreen(),
  ];
  int _selectedItemIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedItemIndex = index;
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedItemIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: _selectedItemIndex,
        showUnselectedLabels: true,
        selectedItemColor: kMtnYellow,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            activeIcon: Icon(Icons.money),
            label: "MoMo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            activeIcon: Icon(Icons.more_vert),
            label: "More",
          ),
        ],
      ),
    );
  }
}
