import 'package:flutter/material.dart';
import '../../utils/constants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMtnYellow,
      appBar: AppBar(
        backgroundColor: kMtnYellow,
        title: const Text('Yo! ABDUL', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          // Placeholder for MTN logo
          child: CircleAvatar(backgroundColor: Colors.white, child: Text('MTN', style: TextStyle(color: kMtnYellow, fontWeight: FontWeight.bold, fontSize: 10))),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
                color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Balances', () {},),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.5,
                  children: [
                    _buildBalanceCard(Icons.phone_android, 'AIRTIME', 'GHS 0.00', 'BONUS: GHS 91.31'),
                    _buildBalanceCard(Icons.wifi, 'DATA', '1.18 GB', 'BONUS:'),
                    _buildBalanceCard(Icons.sms, 'SMS', '30 SMS', 'BONUS:'),
                    _buildBalanceCard(Icons.router, 'BROADBAND', 'GET CONNECTED', 'CLICK HERE'),
                  ],
                ),
                const SizedBox(height: 20),
                _buildSectionHeader('Quick access', () {}),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 4, // We have 4 items, so we want 4 columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true, // Important inside a SingleChildScrollView
                  physics: const NeverScrollableScrollPhysics(), // Important inside a SingleChildScrollView
                  childAspectRatio: 0.9, // Adjust this to get the desired height/width ratio
                  children: [
                    _buildQuickAccessItem(Icons.wifi_tethering, 'Data Bundle'),
                    _buildQuickAccessItem(Icons.star_border, 'Just4U'),
                    _buildQuickAccessItem(Icons.blender_outlined, 'Mashup'),
                    _buildQuickAccessItem(Icons.contact_support_outlined, 'Contact us'),
                  ],
                ),
                const SizedBox(height: 10),
                // The wider buttons
                Row(
                  children: [
                    Expanded(child: _buildWideQuickAccessButton('MTNPulse', kMtnBlack)),
                    const SizedBox(width: 10),
                    Expanded(child: _buildWideQuickAccessButton('CallerTunez', Colors.pink.shade300, icon: Icons.music_note)),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onViewAll) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(onPressed: onViewAll, child: const Text('View all >', style: TextStyle(color: kMtnBlack))),
      ],
    );
  }

  Widget _buildBalanceCard(IconData icon, String title, String value, String bonus) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: kMtnYellow),
                const SizedBox(width: 5),
                Text(title, style: const TextStyle(fontSize: 12, color: kDeepGrey)),
              ],
            ),
            const Spacer(),
            Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(bonus, style: const TextStyle(fontSize: 12, color: kDeepGrey)),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessItem(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Icon(icon, size: 30),
          const SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildWideQuickAccessButton(String text, Color color, {IconData? icon}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[Icon(icon, color: Colors.white, size: 18), const SizedBox(width: 8)],
          Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}