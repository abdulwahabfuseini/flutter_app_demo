// lib/screens/shop_screen.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Promo Banner
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: kMtnYellow,
                // In a real app, you'd use a DecorationImage
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buy data, pay with\nMoMo and enjoy\n50% 4G bonus',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kMtnBlack,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Only on myMTN app', style: TextStyle(color: kMtnBlack)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What do you need?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _buildServiceItem(Icons.phone_android, 'Airtime'),
                      _buildServiceItem(Icons.wifi, 'Data'),
                      _buildServiceItem(Icons.blender_outlined, 'Mashup'),
                      _buildServiceItem(Icons.router, 'Broadband'),
                      _buildServiceItem(Icons.star_border, 'Just4U'),
                      _buildServiceItem(Icons.public, 'Call Abroad'),
                      _buildServiceItem(Icons.music_note, 'Caller Tunez'),
                      _buildServiceItem(Icons.leaderboard_outlined, 'Rewards'),
                      _buildServiceItem(Icons.business_center, 'SME Plus'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ],
          ),
          child: Icon(icon, size: 30, color: kMtnBlack),
        ),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}