import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistItemHeader extends StatelessWidget {
  final String category;

  const WishlistItemHeader({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.warmCream,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            category,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.warmCream,
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.close, size: 16, color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
