import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isBalanceVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Color
          Container(
            color: primaryColor,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SafeArea(
            child: Column(
              children: [
                // Custom App Bar
                buildAppBar(),
                // Main Content
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(
                          0xFFF4F6F8,
                        ), // A very light grey background
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAccountsSection(),
                          _buildQuickAccessSection(),
                          _buildRecentActivitiesSection(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountsSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 10),
              child: const Text(
                'Standard Savings    6021010067519',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _isBalanceVisible ? 'GHS 5000.00' : 'GHS ****.**',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _isBalanceVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  onPressed: () {
                    setState(() {
                      _isBalanceVisible = !_isBalanceVisible;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            Card(
              color: Colors.white,
              elevation: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAccountAction(
                    icon: Icons.share,
                    label: 'Share\nDetails',
                  ),
                  const SizedBox(width: 30),
                  buildAccountAction(
                    icon: Icons.history,
                    label: 'Last 10\nTransactions',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAccessSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 80),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quick Access',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                'View All',
                style: GoogleFonts.poppins(
                  color: Colors.teal,
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildQuickAccessIcon(icon: Icons.swap_horiz, label: 'Transfers'),
              buildQuickAccessIcon(
                icon: Icons.receipt_long,
                label: 'Pay\nBills',
              ),
              buildQuickAccessIcon(
                icon: Icons.phone_android,
                label: '   Buy\nAirtime',
              ),
              buildQuickAccessIcon(
                icon: Icons.phone_iphone,
                label: 'Mobile\nMoney',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecentActivitiesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // Custom Segmented Control
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Recent Activities',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'GCB Flash',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(Icons.keyboard_arrow_down, color: Colors.black54),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // List Item
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFFFFF6E5),
              child: Icon(Icons.phone_android, color: Color(0xFFF2994A)),
            ),
            title: const Text(
              'Buy Airtime',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'GHS 3.62',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.qr_code_scanner, color: Colors.grey.shade600),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
