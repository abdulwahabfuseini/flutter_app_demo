import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/pages/payments/payment_widgets.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "Payments",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 35),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                spacing: 30,
                children: [
                  paymentLists(Icons.phonelink_lock, "Buy Airtime", "Make payments to top up airtime", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Buy Data Bundle", "Make payments for internet access", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Card Payment", "Top up or make card payments", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Cardless Withdrawal", "Withdraw cash without a card at the ATM", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "ECG Prepaid", "Pay or purchase prepaid credit", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Ghana.gov Payments", "Make payments to governmental institutions", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "PAPSS Payments", "Instant cross-border payments in Africa", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Pay Bills", "Make Payments for bills and fees", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Buy Airtime", "Make Payments to top up airtime", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Buy Airtime", "Make Payments to top up airtime", Icons.chevron_right),
                  paymentLists(Icons.phonelink_lock, "Buy Airtime", "Make Payments to top up airtime", Icons.chevron_right),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
