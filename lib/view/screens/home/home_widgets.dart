import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

Widget headerTitle({
  required String text,
  required VoidCallback onViewAll,
  IconData? icon,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        spacing: 10,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          ),
          if (icon != null) Icon(icon, size: 20, color: Colors.black54),
        ],
      ),
      TextButton(
        onPressed: onViewAll,
        child: Row(
          spacing: 4,
          children: [
            Text(
              "View All",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Icon(CupertinoIcons.chevron_right_circle_fill, color: Colors.black),
          ],
        ),
      ),
    ],
  );
}

Widget balanceCard(IconData icon, String title, String value, String bonus) {
  return Card(
    color: kMtnYellow,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            children: [
              Icon(icon, size: 18),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(bonus, style: TextStyle(fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget quickAccessCard(IconData icon, String value) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      spacing: 5,
      children: [
        Icon(icon, color: Colors.white, size: 30),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

Widget quickAccessButtons({
   String? text,
   String? text2,
   String? text3,
   String? text4,
  IconData? icon,
}) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20, color: Colors.black, wordSpacing: 4),
          children: [
            TextSpan(
              text: text,
              style: TextStyle(fontWeight: FontWeight.bold, color: kMtnYellow),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: text3,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: text4,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
