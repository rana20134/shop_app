import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? trailingText;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: trailingText != null
          ? Text(
              trailingText!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            )
          : const Icon(Icons.arrow_forward_ios, size: 18),
    );
  }
}