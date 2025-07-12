import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.white70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              // boxShadow: BoxShadow(blurStyle: BlurStyle.inner)
            ),
            child: Center(child: Text("Red Box", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white),)),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
              // boxShadow: BoxShadow(blurStyle: BlurStyle.inner)
            ),
            child: Center(child: Text("Yellow Box", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white),)),
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
              // boxShadow: BoxShadow(blurStyle: BlurStyle.inner)
            ),
            child: Center(child: Text("Green Box", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white),)),
          ),
        ],
      ),
    );
  }
}
