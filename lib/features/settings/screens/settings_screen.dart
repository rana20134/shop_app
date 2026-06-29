import 'package:flutter/material.dart';

import '../widgets/settings_section.dart';
import '../widgets/settings_switch_tile.dart';
import '../widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SettingsSection(
            title: "GENERAL",
            children: [
              SettingsSwitchTile(
                icon: Icons.dark_mode_outlined,
                title: "Dark Mode",
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
              const Divider(height: 1),
              SettingsSwitchTile(
                icon: Icons.notifications_none,
                title: "Notifications",
                value: notifications,
                onChanged: (value) {
                  setState(() {
                    notifications = value;
                  });
                },
              ),
              const Divider(height: 1),
              const SettingsTile(
                icon: Icons.language,
                title: "Language",
                trailingText: "English",
              ),
            ],
          ),
          const SizedBox(height: 25),
          SettingsSection(
            title: "ACCOUNT",
            children: const [
              SettingsTile(
                icon: Icons.lock_outline,
                title: "Change Password",
              ),
              Divider(height: 1),
              SettingsTile(
                icon: Icons.privacy_tip_outlined,
                title: "Privacy Policy",
              ),
              Divider(height: 1),
              SettingsTile(
                icon: Icons.description_outlined,
                title: "Terms of Service",
              ),
            ],
          ),
          const SizedBox(height: 25),
          const SettingsSection(
            title: "ABOUT",
            children: [
              SettingsTile(
                icon: Icons.info_outline,
                title: "Version",
                trailingText: "1.0.0",
              ),
            ],
          ),
        ],
      ),
    );
  }
}