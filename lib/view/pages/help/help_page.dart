import 'package:flutter/material.dart';
// Make sure this constant is defined somewhere, e.g., in a constants.dart file.
// const Color kOffWhite = Color(0xFFF5F5F5);
// For this example, I'll define it here.
const Color kOffWhite = Color(0xFFF8F8F8);

// Assuming HelpListItem is defined like this for a runnable example:
class HelpListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconBackgroundColor;
  final Color iconColor;

  const HelpListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconBackgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconBackgroundColor,
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}


const Color primaryColor = Color(0xFF3A4F5C);

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  static final List<Map<String, dynamic>> paymentOptions = [
    {
      'icon': Icons.phone_iphone,
      'title': 'Contact Us',
      'subtitle': 'Reach us on your preferred medium',
      'iconBgColor': const Color(0xFFFFF6E5),
      'iconColor': const Color(0xFFF2994A),
    },
    {
      'icon': Icons.wifi,
      'title': 'Forex Rates',
      'subtitle': "View today's forex rates",
      'iconBgColor': const Color(0xFFE0F7FA),
      'iconColor': const Color(0xFF29B6F6),
    },
    {
      'icon': Icons.description, // Changed icon for variety
      'title': 'Frequently Asked Questions (FAQs)',
      'subtitle': 'Your typical questions with answers',
      'iconBgColor': const Color(0xFFE8EAF6),
      'iconColor': const Color(0xFF5C6BC0),
    },
    {
      'icon': Icons.location_on, // Changed icon for variety
      'title': 'Locate a Branch/ATM',
      'subtitle': 'Find the nearest service point',
      'iconBgColor': const Color(0xFFE8F5E9), // Changed color for variety
      'iconColor': const Color(0xFF66BB6A),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCustomAppBar(),
        Expanded(
          child: Container(
            // Removed vertical padding here to let the ListView handle its own padding
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            // ClipRRect is good to have to enforce the border radius on scrolling content
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Added some top padding
                  const SizedBox(height: 30),
                  // This Row is now fixed
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/teacher.png", width: 90, height: 90),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFF6E5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Hi Abdul Wahab Fuseini",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              SizedBox(height: 4),
                              Text("How can we help?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 12)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  // THE MAIN FIX: Wrap ListView in Expanded
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        // No need for horizontal padding here if the parent container has it
                        vertical: 24.0,
                      ),
                      itemCount: paymentOptions.length,
                      separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                      itemBuilder: (context, index) {
                        final item = paymentOptions[index];
                        return HelpListItem(
                          icon: item['icon'],
                          title: item['title'],
                          subtitle: item['subtitle'],
                          iconBackgroundColor: item['iconBgColor'],
                          // You had this hardcoded to black, using the defined color instead
                          iconColor: item['iconColor'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCustomAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            'Help',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Opacity(
            opacity: 0.6,
            child: ColorFiltered(
              colorFilter: const ColorFilter.matrix(<double>[
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0,      0,      0,      1, 0,
              ]),
              child: Image.asset('assets/images/GCB_brandmark.png', height: 45),
            ),
          ),
        ],
      ),
    );
  }
}