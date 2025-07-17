import 'package:flutter/material.dart';
import 'package:flutter_app_demo/utils/constants.dart';

// --- Constants used by these widgets ---
const double kAvatarRadius = 45.0;

// Helper widget for the complex profile avatar
Widget buildProfileAvatar() {
  return Stack(
    alignment: Alignment.center,
    children: [
      const CircleAvatar(
        radius: kAvatarRadius + 5, // White border
        backgroundColor: Colors.white,
      ),
      const CircleAvatar(
        radius: kAvatarRadius, // Yellow circle
        backgroundColor: kMtnYellow,
        child: Icon(Icons.person, size: 50, color: Colors.white),
      ),
      Positioned(
        bottom: 5,
        right: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: kMtnYellow, width: 2),
          ),
          child: const Icon(Icons.add, color: kMtnYellow, size: 20),
        ),
      ),
    ],
  );
}

// Helper widget for the "My Account" button
Widget buildMyAccountButton() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: ShapeDecoration(
      color: kOffWhite,
      shape: StadiumBorder(
        side: BorderSide(color: Colors.black.withOpacity(0.8), width: 2),
      ),
    ),
    child: const Row(
      mainAxisSize: MainAxisSize.min, // Keeps the row compact
      children: [
        Icon(Icons.person_outline, size: 20),
        SizedBox(width: 8),
        Text(
          "MY ACCOUNT",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(width: 4),
        Icon(Icons.chevron_right, size: 20),
      ],
    ),
  );
}

Widget myMTNItems(IconData icon, String value) {
  return Column(
    spacing: 16,
    children: [
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: kMtnYellow),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Icon(icon, size: 25, color: Colors.black),
      ),
      Center(child: Text(value, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16))),
    ],
  );
}
