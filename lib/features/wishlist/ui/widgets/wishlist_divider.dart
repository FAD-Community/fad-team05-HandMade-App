import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistDivider extends StatelessWidget {
  const WishlistDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: 30,
        width: 1,
        color: AppColors.lightBorderColor,
      ),
    );
  }
}
