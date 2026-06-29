import 'package:flutter/material.dart';
import 'package:sports_app/features/shop/widgets/product_card.dart';
class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "All Products",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children:  [

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1551958219-acbc608c6377",
            title: "Pro Soccer Ball",
            subtitle: "FIFA approved match ball",
            price: "\$29.99",
          ),

          SizedBox(height: 16),

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
            title: "Runner X1",
            subtitle: "Lightweight running shoes",
            price: "\$89.99",
          ),

          SizedBox(height: 16),

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1517466787929-bc90951d0974",
            title: "Classic Jersey",
            subtitle: "Breathable fabric",
            price: "\$45.00",
          ),

          SizedBox(height: 16),

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1518611012118-696072aa579a",
            title: "Gym Duffle Bag",
            subtitle: "Water-resistant with shoe compartment",
            price: "\$35.50",
          ),

          SizedBox(height: 16),

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1508609349937-5ec4ae374ebf",
            title: "Pro Tennis Racket",
            subtitle: "Carbon fiber frame",
            price: "\$120.00",
          ),

          SizedBox(height: 16),

          ProductCard(
            image:
                "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=600",
            title: "Yoga Mat",
            subtitle: "Non-slip eco friendly",
            price: "\$22.00",
          ),
        ],
      ),
    );
  }
}