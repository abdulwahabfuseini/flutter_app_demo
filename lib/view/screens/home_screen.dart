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
        elevation: 0,
        title: const Text(
          'Yo! ABDUL', // Restored the full name as per the screenshot
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'MTN',
              style: TextStyle(
                color: kMtnYellow,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: kMtnBlack),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader('Balances', () {}),
                const SizedBox(height: 10),
                
                // --- FIX 1: Balances GridView ---
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  // OLD: 2.7 (Too short)
                  // NEW: 1.8 (Allows enough height for the balance card content)
                  childAspectRatio: 1.8, 
                  children: [
                    _buildBalanceCard(
                      Icons.phone_android,
                      'AIRTIME',
                      'GHS 0.00',
                      'BONUS: GHS 91.31',
                    ),
                    _buildBalanceCard(Icons.wifi, 'DATA', '1.18 GB', 'BONUS:'),
                    _buildBalanceCard(Icons.sms, 'SMS', '30 SMS', 'BONUS:'),
                    _buildBalanceCard(
                      Icons.router,
                      'BROADBAND',
                      'GET CONNECTED',
                      'CLICK HERE',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildSectionHeader('Quick access', () {}),
                const SizedBox(height: 10),
                
                // --- FIX 2: Quick Access GridView ---
                GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  // OLD: 1.6 (Too short to fit icon + text)
                  // NEW: 1.0 (Makes the items square, allowing space for the label)
                  childAspectRatio: 1.0, 
                  shrinkWrap: true,
                  children: [
                    _buildQuickAccessItem(Icons.wifi_tethering, 'Data Bundle'),
                    _buildQuickAccessItem(Icons.star_border, 'Just4U'),
                    _buildQuickAccessItem(Icons.blender_outlined, 'Mashup'),
                    _buildQuickAccessItem(
                      Icons.contact_support_outlined,
                      'Contact us',
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Increased spacing slightly
                
                // Wide Buttons Row
                Row(
                  children: [
                    Expanded(
                      child: _buildWideQuickAccessButton(
                        color: kMtnBlack,
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'MTN',
                                style: TextStyle(color: kMtnYellow),
                              ),
                              const TextSpan(
                                text: 'Pulse',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _buildWideQuickAccessButton(
                        color: Colors.pink.shade300,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'CallerTunez',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Added padding at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper methods remain the same
  Widget _buildSectionHeader(String title, VoidCallback onViewAll) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onViewAll,
          child: const Text('View all >', style: TextStyle(color: kMtnBlack)),
        ),
      ],
    );
  }

  Widget _buildBalanceCard(
    IconData icon,
    String title,
    String value,
    String bonus,
  ) {
    return Card(
      color: kMtnYellow,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(icon, color: Colors.black, size: 20),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: kLightGrey,
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0, // Reduced vertical padding slightly
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kMtnBlack,
                    ),
                  ),
                  // Removed SizedBox for tighter spacing
                  Text(
                    bonus,
                    style: const TextStyle(fontSize: 12, color: kDeepGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(51),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, color: kMtnBlack),
        ),
      ],
    );
  }

  Widget _buildWideQuickAccessButton({
    required Widget child,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: child,
    );
  }
}