import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bgImage.jpeg",
            fit: BoxFit.cover,
            height: 300,
          ),
          SizedBox(height: 300, child: Center(child: Text("Hello Mo Kwasia", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)))
        ],

      ),
    );
  }
}
