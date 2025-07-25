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
    return ListTile(
      // The ListTile simplifies the layout significantly
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
        style: TextStyle(color: Colors.grey.shade600, fontSize: 15, fontWeight: FontWeight.w700),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.black),
      onTap: () {
        // Add navigation or action here
      },
    );
  }
}