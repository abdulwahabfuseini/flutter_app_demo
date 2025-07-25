import 'package:flutter/material.dart';

Widget paymentLists(IconData icon, String title, String value, IconData icon2 ){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        spacing: 12,
        children: [
          CircleAvatar(
            radius: 18,
            child: Icon(icon, size: 15,),
          ),
          Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
              Text(value, style: TextStyle(color: Colors.grey, fontSize: 15),)
            ],
          ),
        ],
      ),
      Icon(icon2)
    ],
  );
}
