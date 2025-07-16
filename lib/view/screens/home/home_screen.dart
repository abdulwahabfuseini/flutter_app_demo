import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/home/home_widgets.dart';
import '../../../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMtnYellow,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset("assets/images/Logo.png", height: 160, width: 160),
        ),
        title: Center(
          child: RichText(text: const TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black, wordSpacing: 4),
            children: [
              TextSpan(text: "Yo!", style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " ABDUL", style: TextStyle()),
            ]
          )),
        ),
        backgroundColor: kMtnYellow,
        actions: [
          Image.asset("assets/images/bot.png", height: 40, width: 80)
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(constraints: BoxConstraints(
            maxHeight: constraints.maxHeight
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              color: kLightGrey
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                   headerTitle(text: 'Balances', icon: Icons.refresh,  onViewAll: () {  })
                ],
              ),
            ),
          ),
          ),
        );
      },),
    );
  }
}
