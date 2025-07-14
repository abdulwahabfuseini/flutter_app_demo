import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/home/home_widgets.dart';
import 'package:flutter_app_demo/view/screens/settings.dart';
import '../../../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                wordSpacing: 4,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Yo!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextSpan(
                  text: "ABDUL",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "MTN",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ),
              );
            },
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1000,
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                buildSectionHeader("Balance", (Icons.refresh), () {}),
                const SizedBox(height: 8),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.8,
                  children: [
                    buildBalanceCard(
                      Icons.wifi,
                      "AIRTIME",
                      "GHS 0.00",
                      "Bonus: GHS 91.31",
                    ),
                    buildBalanceCard(Icons.share, "DATA", "1.2 GB", "Bonus:"),
                    buildBalanceCard(Icons.wifi, "SMS", "30 SMS", "Bonus: "),
                    buildBalanceCard(
                      Icons.wifi,
                      "BROADBAND",
                      "GET CONNECTED",
                      "CLICK HERE",
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                Column(
                  children: [
                    Text(
                      "Showing balances as at",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Jul 13 2025; 05:16:05",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                buildSectionHeader("Quick access", (Icons.add), () {}),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 0.8,
                  children: [
                    buildBalanceAccessCard((Icons.share), "Data Bundle"),
                    buildBalanceAccessCard((Icons.share), "Just4U"),
                    buildBalanceAccessCard((Icons.share), "Mashup"),
                    buildBalanceAccessCard((Icons.share), "Contact us"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
