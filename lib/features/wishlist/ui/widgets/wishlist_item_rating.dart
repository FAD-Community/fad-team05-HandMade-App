import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class WishlistItemRating extends StatelessWidget {
  final double rating;
  final int reviewsCount;

  const WishlistItemRating({
    super.key,
    required this.rating,
    required this.reviewsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const SizedBox(width: 4),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '($reviewsCount)',
          style: const TextStyle(fontSize: 12, color: AppColors.grey),
        ),
      ],
    );
  }
}
