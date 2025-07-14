import 'package:flutter/material.dart';
import 'package:flutter_app_demo/utils/constants.dart';

Widget buildSectionHeader(
  String title,
  IconData? icon,
  VoidCallback onViewAll,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        spacing: 2,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),

          Icon(icon),
        ],
      ),
      TextButton(
        onPressed: onViewAll,
        child: Row(
          children: [
            Text(
              'View all',
              style: TextStyle(
                color: kMtnBlack,
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
            Icon(Icons.chevron_right_sharp, size: 20),
          ],
        ),
      ),
    ],
  );
}

Widget buildBalanceCard(
  IconData icon,
  String title,
  String value,
  String bonus,
) {
  return Card(
    clipBehavior: Clip.antiAlias,
    color: Colors.amber,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 15, bottom: 10),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.black, size: 18),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0, // Reduced vertical padding slightly
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 6,
                children: [
                  Text(
                    value,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    bonus,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBalanceAccessCard(IconData icon, String value) {
  return Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Icon(icon, color: Colors.white,),
        Text(value, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white)),
      ],
    ),
  );
}
