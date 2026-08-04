import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:hand_made/generated/l10n.dart';

class WishlistItemImage extends StatelessWidget {
  final WishlistItemModel item;
  final bool isAr;

  const WishlistItemImage({super.key, required this.item, required this.isAr});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            item.imageUrl,
            width: MediaQueryHelper.width(context, 0.35),
            height: MediaQueryHelper.width(context, 0.45),
            fit: BoxFit.cover,
          ),
        ),
        if (item.isBestSeller)
          Positioned(
            top: 8,
            left: isAr ? null : 8,
            right: isAr ? 8 : null,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                S.of(context).bestSeller,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        if (item.discountPercentage > 0)
          Positioned(
            bottom: 8,
            left: isAr ? null : 8,
            right: isAr ? 8 : null,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.discountColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '-${item.discountPercentage}%',
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
