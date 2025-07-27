import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}),
          SizedBox(height: 10),
          FloatingActionButton(onPressed: () {}),
        ],
      ),
    );
  }
}
