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
        // --- Your AppBar code is perfect, no changes needed ---
        backgroundColor: Colors.amber,
        title: Center(
          child: RichText(
            text: const TextSpan(
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
                  text: " ABDUL",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
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
                    return const Settings();
                  },
                ),
              );
            },
            icon: const Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      // --- FIX: THE LAYOUT BUILDER IS NOW THE TOP-LEVEL WIDGET IN THE BODY ---
      body: LayoutBuilder(
        builder: (context, constraints) {
          // SingleChildScrollView is now INSIDE the LayoutBuilder
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                // This now receives the CORRECT screen height from the LayoutBuilder
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kLightGrey,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                ),
                // Using IntrinsicHeight is not needed here as ConstrainedBox handles it.
                // The Column will now naturally expand to fill the minHeight.
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
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 1.8,
                        children: [
                          buildBalanceCard(Icons.wifi, "AIRTIME", "GHS 0.00", "Bonus: GHS 91.31"),
                          buildBalanceCard(Icons.share, "DATA", "1.2 GB", "Bonus:"),
                          buildBalanceCard(Icons.wifi, "SMS", "30 SMS", "Bonus: "),
                          buildBalanceCard(Icons.wifi, "BROADBAND", "GET CONNECTED", "CLICK HERE"),
                        ],
                      ),
                      const SizedBox(height: 45),
                      const Text(
                        "Showing balances as at",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const Text(
                        "Jul 13 2025; 05:16:05",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 45),
                      buildSectionHeader("Quick access", (Icons.add), () {}),
                      const SizedBox(height: 10),
                      GridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 6,
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 1.2,
                        shrinkWrap: true,
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
        },
      ),
    );
  }
}