import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary
            : AppColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected
              ? AppColors.white
              : AppColors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}