import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

Widget servicesItem(IconData icon, String value) {
  return Column(
    spacing: 6,
    children: [
      CircleAvatar(
        radius: 35,
        backgroundColor: kMomoBlue,
        child: Icon(icon, size: 32, color: Colors.white),
      ),
      Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    ],
  );
}
