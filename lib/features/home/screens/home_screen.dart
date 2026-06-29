import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_assets.dart';
import '../widgets/search_widget.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          "Discover",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Discover",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 20),

      const SearchWidget(),
      const SizedBox(height: 20),

SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: const [
      CategoryItem(
        title: "Shoes",
        isSelected: true,
      ),
      SizedBox(width: 10),

      CategoryItem(title: "Jerseys"),
      SizedBox(width: 10),

      CategoryItem(title: "Balls"),
      SizedBox(width: 10),

      CategoryItem(title: "Accessories"),
      ],
  ),
),
const SizedBox(height: 20),

Expanded(
  child: GridView.count(
    crossAxisCount: 2,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    childAspectRatio: 0.65,
    children: const [
      ProductCard(
        image: AppAssets.runnerX1,
        title: "Runner X1",
        price: "\$120",
      ),

      ProductCard(
        image: "https://images.pexels.com/photos/996329/pexels-photo-996329.jpeg",
        title: "Classic jersey",
        price: "\$85",
      ),

      ProductCard(
        image: "https://images.pexels.com/photos/274422/pexels-photo-274422.jpeg",
        title: "Soccor Ball",
        price: "\$29.9",
      ),

      ProductCard(
        image: AppAssets.yogaMat,
        title: "Yoga Mat",
        price: "\$30",
      ),
    ],
  ),
),
    ],
  ),
),
    );
  }
}