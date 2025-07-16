import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerTitle({ required String text,
  required VoidCallback onViewAll,
  IconData? icon,}) {
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
          if (icon != null)
            Icon(icon, size: 20, color: Colors.black54),
        ],
      ),
      TextButton(
        onPressed: onViewAll,
        child: Row(
          spacing: 4,
          children: [
            Text(
              "View All",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Colors.black),
            ),
            Icon(CupertinoIcons.chevron_right_circle_fill, color: Colors.black,),
          ],
        ),
      ),
    ],
  );
}


Widget balanceGridBox(IconData icon, String title, String value, String bonus){
  return Column(

  );
}

