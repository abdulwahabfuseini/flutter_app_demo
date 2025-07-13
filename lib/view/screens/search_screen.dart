import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/bgImage.jpeg",
          height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.luminosity,
              color: Colors.black87
            ),
            child: Center(child: Text("Hello", style: TextStyle(color: Colors.green, fontSize: 30),)),
          ),
        ],
      ),
    );
  }
}
