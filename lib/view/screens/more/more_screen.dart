import 'package:flutter/material.dart';
import 'package:flutter_app_demo/utils/constants.dart';
import 'package:flutter_app_demo/view/screens/more/more_widget.dart';

// --- The Custom AppBar for the Profile Header ---
class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // Layer 1: The solid yellow background
        Container(color: kMtnYellow),
        // Layer 2: A transparent AppBar for the MTN logo (or other controls)
        AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset("assets/images/Logo.png", height: 160, width: 160), // Your MTN Logo
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),

        // Layer 3: The Profile Avatar, positioned to hang below
        Positioned(
          bottom: -kAvatarRadius, // Pulls the avatar down by its radius
          child: buildProfileAvatar(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// --- The Main Screen Widget ---
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      // Use our new custom AppBar here
      appBar: const CustomProfileAppBar(),
      // The body is now much simpler and scrollable
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // 1. CRUCIAL: Add space for the bottom half of the avatar
              const SizedBox(height: kAvatarRadius + 20),

              // 2. User Name
              const Text(
                "ABDUL WAHAB FUSEINI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),

              // 3. Phone Number
              const Text(
                "+233245264999",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),

              // 4. "My Account" Button
              buildMyAccountButton(),

              // 5. TODO: Add the rest of your "More" screen content here
              // For example, a list of other options
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                decoration: BoxDecoration(
                  color: kOffWhite,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        Text(
                          "MyMTN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 20,
                          children: [
                            myMTNItems(
                              Icons.star_border_purple500_sharp,
                              "     Send\nFeedback",
                            ),
                            myMTNItems(
                              Icons.favorite_outline_sharp,
                              "   Manage\nsubscription",
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(
                          "Get More From MTN",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        GridView.count(crossAxisCount: 4,
                        crossAxisSpacing: 10,
                          childAspectRatio: 0.8,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            myMTNItems(Icons.sd_storage_rounded, "Discover\n  Apps" ),
                            myMTNItems( Icons.wifi_tethering_rounded, "  Request\n Broadband" ),
                            myMTNItems(Icons.sim_card, "  Get\nE-sim" ),
                            myMTNItems(Icons.image_outlined, "  MTN\nRewards" ),

                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        Text(
                          "Help and Support",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 20,
                          children: [
                            myMTNItems(
                              Icons.perm_contact_cal_outlined,
                              "Contact\n  Us",
                            ),
                            myMTNItems(
                              Icons.storefront_outlined,
                              "Find a\nStore",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
