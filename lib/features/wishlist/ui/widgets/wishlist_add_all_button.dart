import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistAddAllButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const WishlistAddAllButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(
        Icons.shopping_cart_outlined,
        size: 16,
        color: AppColors.white,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: 0,
      ),
    );
  }
}
