import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/screens/momo/momo_widget.dart';
import '../../../utils/constants.dart';

class MomoScreen extends StatelessWidget {
  const MomoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMtnYellow,
      appBar: AppBar(
        backgroundColor: kMtnYellow,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          "MoMo",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balance", style: TextStyle(fontSize: 20)),
                        const SizedBox(height: 13),
                        Divider(thickness: 2),
                        const SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: kMomoBlue, width: 3),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),

                          clipBehavior: Clip.antiAlias,
                          child: Row(
                            children: [
                              Container(width: 8.0, color: kMomoBlue),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 15.0,
                                  ),
                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      // MoMo Logo
                                      Image.asset(
                                        "assets/images/momo.webp",
                                        width: 40,
                                        height: 40,
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // "MoMo Balance" Row
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: kMtnYellow,
                                                  radius: 9,
                                                  child: const Icon(
                                                    Icons.phone_android_rounded,
                                                    size: 12,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                const SizedBox(width: 6),
                                                const Text(
                                                  "MoMo Balance",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              spacing: 10,
                                              children: [
                                                const Text(
                                                  "GHS ****.**",
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.5,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: Colors.grey,
                                                  size: 26,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 4),

                                            // "Last login" Text
                                            const Text(
                                              "Last login: 11/07/2025 at 11:54:17",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 15,
                        children: [
                          Text("Services", style: TextStyle(fontSize: 20)),
                          GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            childAspectRatio: 1.2,
                            children: [
                              servicesItem(
                                Icons.person_add_alt,
                                "Send MoMo",
                              ),
                              servicesItem(Icons.list_alt, "Statement"),
                              servicesItem(
                                Icons.system_update_tv_sharp,
                                "Cashout",
                              ),
                              servicesItem(
                                Icons.playlist_add_check_rounded,
                                "Approval",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
