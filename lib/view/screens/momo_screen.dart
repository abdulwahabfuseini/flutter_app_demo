import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class MoMoScreen extends StatelessWidget {
  const MoMoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      appBar: AppBar(
        backgroundColor: kLightGrey,
        title: const Text('MoMo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // This would typically pop, but since it's in the nav bar,
            // we can leave it empty or have it navigate home.
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Balance', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: kMtnYellow, child: Icon(Icons.money, color: Colors.white)),
                title: const Text('MoMo Balance'),
                subtitle: const Text('GHS ****.**'),
                trailing: IconButton(icon: const Icon(Icons.visibility_outlined), onPressed: () {}),
              ),
            ),
            const SizedBox(height: 30),
            const Text('Services', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildServiceIcon(Icons.send_to_mobile, 'Send MoMo'),
                _buildServiceIcon(Icons.receipt_long, 'Statement'),
                _buildServiceIcon(Icons.price_check, 'Cashout'),
                _buildServiceIcon(Icons.check_circle_outline, 'Approvals'),
              ],
            ),
            const SizedBox(height: 30),
            // Placeholder for "Get Fibre Broadband" banner
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: kMtnBlack,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text('Get fibre broadband\nfor your home!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildServiceIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: kMtnYellow.withOpacity(0.1),
          child: Icon(icon, size: 30, color: kMtnBlack),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}