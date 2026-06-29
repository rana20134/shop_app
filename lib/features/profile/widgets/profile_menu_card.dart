import 'package:flutter/material.dart';

import 'profile_menu_tile.dart';

class ProfileMenuCard extends StatelessWidget {
  const ProfileMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: const Column(
        children: [
          ProfileMenuTile(
            icon: Icons.shopping_bag_outlined,
            title: "My Orders",
          ),
          Divider(height: 1),
          ProfileMenuTile(
            icon: Icons.favorite_border,
            title: "Favorites",
          ),
          Divider(height: 1),
          ProfileMenuTile(
            icon: Icons.credit_card,
            title: "Payment Methods",
          ),
          Divider(height: 1),
          ProfileMenuTile(
            icon: Icons.location_on_outlined,
            title: "Shipping Address",
          ),
          Divider(height: 1),
          ProfileMenuTile(
            icon: Icons.settings_outlined,
            title: "Settings",
          ),
          Divider(height: 1),
          ProfileMenuTile(
            icon: Icons.help_outline,
            title: "Help Center",
          ),
        ],
      ),
    );
  }
}