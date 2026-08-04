import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WishlistBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.lightBorderColor),
          color: AppColors.white,
        ),
        child: const Icon(
          Icons.arrow_back,
          color: AppColors.userNameColor,
          size: 20,
        ),
      ),
    );
  }
}
