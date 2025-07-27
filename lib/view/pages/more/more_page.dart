import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import 'more_widgets.dart';

const Color primaryColor = Color(0xFF3A4F5C);

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  static final List<Map<String, dynamic>> paymentOptions = [
    {
      'icon': Icons.phone_iphone,
      'title': 'Investment and Deposits',
      'subtitle': 'Investments and deposits opportunity for you',
      'iconBgColor': const Color(0xFFFFF6E5),
      'iconColor': const Color(0xFFF2994A),
    },
    {
      'icon': Icons.wifi,
      'title': 'Legal',
      'subtitle': 'View Privacy Policy and Terms of use',
      'iconBgColor': const Color(0xFFE0F7FA),
      'iconColor': const Color(0xFF29B6F6),
    },
    {
      'icon': Icons.credit_card,
      'title': 'Lifestyle',
      'subtitle': 'Convenient access to your daily activities',
      'iconBgColor': const Color(0xFFE8EAF6),
      'iconColor': const Color(0xFF5C6BC0),
    },
    {
      'icon': Icons.atm,
      'title': 'Loans',
      'subtitle': 'View your loans with the bank',
      'iconBgColor': const Color(0xFFFFF3E0),
      'iconColor': const Color(0xFFFF9800),
    },
    {
      'icon': Icons.lightbulb_outline,
      'title': 'Service Requests',
      'subtitle': 'Cheques, Standing Orders, etc',
      'iconBgColor': const Color(0xFFFFFDE7),
      'iconColor': const Color(0xFFFFD600),
    },
    {
      'icon': Icons.account_balance,
      'title': 'Transaction History',
      'subtitle': 'View and search transaction history',
      'iconBgColor': const Color(0xFFE0F2F1),
      'iconColor': const Color(0xFF00897B),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCustomAppBar(),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 24.0,
                ),
                itemCount: paymentOptions.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final item = paymentOptions[index];
                  return MoreListItem(
                    icon: item['icon'],
                    title: item['title'],
                    subtitle: item['subtitle'],
                    iconBackgroundColor: item['iconBgColor'],
                    iconColor: Colors.black,
                  );
                },
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
            'More Services',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          // This makes the image both grayscale AND semi-transparent.
          Opacity(
            opacity: 0.6, // Slightly faded
            child: ColorFiltered(
              colorFilter: const ColorFilter.matrix(<double>[
                // Grayscale matrix
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0.2126, 0.7152, 0.0722, 0, 0,
                0, 0, 0, 1, 0,
              ]),
              child: Image.asset('assets/images/GCB_brandmark.png', height: 45),
            ),
          ),
        ],
      ),
    );
  }
}
