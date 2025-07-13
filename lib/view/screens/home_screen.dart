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
        elevation: 0, // Set elevation to 0 to blend with the Scaffold
        title: const Text(
          'Yo! ABDUL',
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
          // Adding both topRight and topLeft for a symmetrical look
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
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.7,
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
                GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.6, // Adjusted for a more square look
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
                const SizedBox(height: 10),
                // --- THIS CALLING CODE IS CORRECT ---
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
              ],
            ),
          ),
        ),
      ),
    );
  }

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
    // A slightly cleaner implementation of your card design
    return Card(
      color: kMtnYellow,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior:
          Clip.antiAlias, // This ensures children respect the border radius
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Make children stretch
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
            // Use Expanded to fill the remaining space
            child: Container(
              color: kLightGrey,
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the content
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kMtnBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
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
                // <<< FIX #1: DEPRECATION WARNING FIXED
                color: Colors.grey.withAlpha(51), // From withOpacity(0.2)
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

  // <<< FIX #2: THE CORRECT FUNCTION DEFINITION TO MATCH THE CALLS
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
