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
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                wordSpacing: 4,
              ),
              children: [
                TextSpan(
                  text: "Yo!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " ABDUL",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kMtnYellow,
        actions: [Image.asset("assets/images/bot.png", height: 40, width: 80)],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                ),
                color: kLightGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    headerTitle(
                      text: 'Balances',
                      icon: Icons.refresh,
                      onViewAll: () {},
                    ),
                    const SizedBox(height: 10),
                    GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1.6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        balanceCard(
                          Icons.phone_in_talk_sharp,
                          "AIRTIME",
                          "GHS 0.00",
                          "BONUS: GHS 96.31",
                        ),
                        balanceCard(
                          Icons.mobiledata_off,
                          "DATA",
                          "8.61 GB",
                          "BONUS:",
                        ),
                        balanceCard(
                          Icons.mail_outline_sharp,
                          "SMS",
                          "30 SMS",
                          "BONUS:",
                        ),
                        balanceCard(
                          Icons.wifi,
                          "BROADBAND",
                          "GET CONNECTED",
                          "CLICK HERE",
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Text(
                        "Showing balances as at\n Jul 16 2025, 00:05:25",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    headerTitle(text: "Quick access", onViewAll: () {}),
                    GridView.count(crossAxisCount: 4,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.1,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        quickAccessCard(Icons.mobiledata_off, "Data Bundle"),
                        quickAccessCard(Icons.shopping_bag_outlined, "Just4U"),
                        quickAccessCard(Icons.storage, "Mashup"),
                        quickAccessCard(Icons.perm_contact_calendar_outlined, "Contact us"),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    GridView.count(crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3.3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        quickAccessButtons(text: "MTN", text2: 'Pulse'),
                        quickAccessButtons(text3: "Caller", text4: 'tunez'),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text("mtn rewards".toUpperCase(), style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                        Card(
                          color: Colors.white,
                          elevation: 3,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: kMtnYellow,
                                  child: Icon(Icons.file_open),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
