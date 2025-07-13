import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 60, color: kDeepGrey),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: kMtnYellow,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 16),
              const Text('ABDUL WAHAB FUSEINI', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              const Text('+233245264999', style: TextStyle(color: kDeepGrey)),
              const SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  side: const BorderSide(color: kMtnBlack),
                ),
                child: const Text('MY ACCOUNT >', style: TextStyle(color: kMtnBlack)),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Help and Support', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _buildSupportItem(Icons.contact_mail_outlined, 'Contact\nUs'),
                        const SizedBox(width: 30),
                        _buildSupportItem(Icons.store_outlined, 'Find a\nStore'),
                      ],
                    ),
                    const Divider(height: 40),
                    const Text('Legal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _buildSupportItem(Icons.policy_outlined, 'Legal\nPolicy'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text('APP VERSION 2.0.15 17995', style: TextStyle(color: kDeepGrey)),
              const SizedBox(height: 16),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text('LOGOUT'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: kMtnBlack,
                  side: const BorderSide(color: kMtnBlack),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSupportItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 24, color: kMtnBlack),
        ),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(color: kDeepGrey)),
      ],
    );
  }
}