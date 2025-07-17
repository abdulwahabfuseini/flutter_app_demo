import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/shop/shop_widget.dart';
import '../../../utils/constants.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMtnYellow,
        title: Text(
          "Shop",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Image.asset("assets/images/mtnBanner.jpg"),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          "What do you need?",
                          style: TextStyle(fontSize: 23),
                        ),
                        GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                          childAspectRatio: 1.6,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            shopNeedContent(
                              Icons.sd_storage_rounded,
                              "Airtime",
                            ),
                            shopNeedContent(Icons.mobiledata_off, "Data"),
                            shopNeedContent(Icons.storage, "Mashup"),
                            shopNeedContent(
                              Icons.wifi_tethering_rounded,
                              "Broadband",
                            ),
                            shopNeedContent(Icons.shopping_bag, "Just4U"),
                            shopNeedContent(
                              Icons.perm_phone_msg_sharp,
                              "Call Abroad",
                            ),
                            shopNeedContent(
                              Icons.my_library_music,
                              "Caller Tunez",
                            ),
                            shopNeedContent(Icons.leaderboard, "Rewards"),
                            shopNeedContent(
                              Icons.table_restaurant_sharp,
                              "SME Plus",
                            ),
                            shopNeedContent(
                              Icons.business_center_sharp,
                              "Business Hub",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                      color: kLightGrey,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 15,
                      children: [
                        Text("Get BroadBand", style: TextStyle(fontSize: 18)),
                        Image.asset("assets/images/shop.jpg")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
