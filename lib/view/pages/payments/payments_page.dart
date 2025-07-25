import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/pages/payments/payment_widgets.dart';

const Color primaryColor = Color(0xFF3A4F5C);

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});


  static final List<Map<String, dynamic>> paymentOptions = [
    {
      'icon': Icons.phone_iphone,
      'title': 'Buy Airtime',
      'subtitle': 'Make payments to top up airtime',
      'iconBgColor': const Color(0xFFFFF6E5),
      'iconColor': const Color(0xFFF2994A),
    },
    {
      'icon': Icons.wifi,
      'title': 'Buy Data Bundle',
      'subtitle': 'Make payments for internet access',
      'iconBgColor': const Color(0xFFE0F7FA),
      'iconColor': const Color(0xFF29B6F6),
    },
    {
      'icon': Icons.credit_card,
      'title': 'Card Payments',
      'subtitle': 'Top up or make card payments',
      'iconBgColor': const Color(0xFFE8EAF6),
      'iconColor': const Color(0xFF5C6BC0),
    },
    {
      'icon': Icons.atm,
      'title': 'Cardless Withdrawal',
      'subtitle': 'Withdraw cash without a card at the ATM',
      'iconBgColor': const Color(0xFFFFF3E0),
      'iconColor': const Color(0xFFFF9800),
    },
    {
      'icon': Icons.lightbulb_outline,
      'title': 'ECG Prepaid',
      'subtitle': 'Pay or purchase prepaid credit',
      'iconBgColor': const Color(0xFFFFFDE7),
      'iconColor': const Color(0xFFFFD600),
    },
    {
      'icon': Icons.account_balance,
      'title': 'Ghana.gov Payments',
      'subtitle': 'Make payments to governmental institutions',
      'iconBgColor': const Color(0xFFE0F2F1),
      'iconColor': const Color(0xFF00897B),
    },
    {
      'icon': Icons.sync_alt,
      'title': 'PAPSS Payments',
      'subtitle': 'Instant cross-border payments in Africa',
      'iconBgColor': const Color(0xFFF3E5F5),
      'iconColor': const Color(0xFFAB47BC),
    },
    {
      'icon': Icons.receipt_long,
      'title': 'Pay Bills',
      'subtitle': 'Make payments for bills and fees',
      'iconBgColor': const Color(0xFFFFF6E5),
      'iconColor': const Color(0xFFF2994A),
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
              color: Colors.white,
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
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                itemCount: paymentOptions.length,
                separatorBuilder: (context, index) =>
                const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final item = paymentOptions[index];
                  return PaymentListItem(
                    icon: item['icon'],
                    title: item['title'],
                    subtitle: item['subtitle'],
                    iconBackgroundColor: item['iconBgColor'],
                    iconColor: item['iconColor'],
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            'Payments',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Opacity(
            opacity: 0.5,
            child:  Image.asset('assets/images/GCB_brandmark.png', height: 40),
          ),
        ],
      ),
    );
  }
}