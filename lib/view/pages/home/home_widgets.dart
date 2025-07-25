import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define theme colors for reusability
const Color primaryColor = Color(0xFF3A4F5C);
const Color accentColor = Color(0xFFF2C94C);

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  bool _isBalanceVisible = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                _buildAppBar(),
                // Main Content
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F6F8), // A very light grey background
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
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payments'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(Icons.help_outline), label: 'Help'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  // --- WIDGET BUILDER METHODS ---

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: accentColor,
            radius: 25,
            child: Icon(Icons.person, color: primaryColor, size: 30),
          ),
          const SizedBox(width: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              Text(
                'Abdul Wahab Fuseni',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Last Login date: 24-07-2025 02:01 AM',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white, size: 28),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildAccountsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Accounts', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                Text('View Accounts', style: GoogleFonts.poppins(color: primaryColor, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),
          const Text('Standard Savings   6021010067519', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                _isBalanceVisible ? 'GHS 50' : 'GHS ****',
                style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(_isBalanceVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                onPressed: () {
                  setState(() {
                    _isBalanceVisible = !_isBalanceVisible;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildAccountAction(icon: Icons.share, label: 'Share\nDetails'),
              const SizedBox(width: 30),
              _buildAccountAction(icon: Icons.history, label: 'Last 10\nTransactions'),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildQuickAccessSection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Quick Access', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
              Text('View All', style: GoogleFonts.poppins(color: primaryColor, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildQuickAccessIcon(icon: Icons.swap_horiz, label: 'Transfers'),
              _buildQuickAccessIcon(icon: Icons.receipt_long, label: 'Pay Bills'),
              _buildQuickAccessIcon(icon: Icons.phone_android, label: 'Buy Airtime'),
              _buildQuickAccessIcon(icon: Icons.phone_iphone, label: 'Mobile Money'),
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
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
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
            title: const Text('Buy Airtime', style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text('GHS 3.62', style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.qr_code_scanner, color: Colors.grey.shade600),
              ],
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
  
  // --- CUSTOM WIDGETS ---

  Widget _buildAccountAction({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: primaryColor),
        ),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildQuickAccessIcon({required IconData icon, required String label}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: primaryColor, size: 30),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}