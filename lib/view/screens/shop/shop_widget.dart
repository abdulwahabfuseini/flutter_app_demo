import 'package:flutter/material.dart';

Widget shopNeedContent(IconData icon, String value) {
  return Column(
    spacing: 4,
    children: [
      CircleAvatar(
        backgroundColor: Colors.black,
        child: Icon(icon, size: 22, color: Colors.white),
      ),
      Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
    ],
  );
}
