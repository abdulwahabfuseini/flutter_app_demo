import 'package:flutter/material.dart';

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
    // Wrap the ListTile with a Card widget
    return Card(
      // 1. Set the background color of the card
      color: Colors.white,

      // 2. Set the elevation to control the shadow's size and intensity
      elevation: 4.0,

      // Optional but highly recommended: add rounded corners for a modern look
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),

      // The Card's content is your original ListTile
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: iconBackgroundColor,
          child: Icon(icon, size: 20, color: iconColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14, fontWeight: FontWeight.w700),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.black),
        onTap: () {
          // Action for the tap is handled by the ListTile
          print("$title tapped!");
        },
      ),
    );
  }
}