import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define theme colors for reusability
const Color primaryColor = Color(0xFF3A4F5C);
const Color accentColor = Color(0xFFF2C94C);

Widget buildAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Column(
      children: [
        Row(
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
                  'Abdul Wahab Fuseini',
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
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Accounts',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              'View Accounts',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    ),
  );
}

Widget buildQuickAccessSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Quick Access',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'View All',
              style: GoogleFonts.poppins(
                color: primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildQuickAccessIcon(icon: Icons.swap_horiz, label: 'Transfers'),
            buildQuickAccessIcon(icon: Icons.receipt_long, label: 'Pay Bills'),
            buildQuickAccessIcon(
              icon: Icons.phone_android,
              label: 'Buy Airtime',
            ),
            buildQuickAccessIcon(
              icon: Icons.phone_iphone,
              label: 'Mobile Money',
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildRecentActivitiesSection() {
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

Widget buildAccountAction({required IconData icon, required String label}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: primaryColor,
        child: Icon(icon, color: Colors.white),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w700),
      ),
    ],
  );
}

Widget buildQuickAccessIcon({required IconData icon, required String label}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: primaryColor,
        child: Icon(icon, color: Colors.white, size: 30),
      ),
      const SizedBox(height: 8),
      Text(label, style: const TextStyle(fontSize: 15)),
    ],
  );
}