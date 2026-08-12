import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/l10n/app_localizations.dart';


class WishlistItemPriceRow extends StatelessWidget {
  final double price;
  final double originalPrice;

  const WishlistItemPriceRow({
    super.key,
    required this.price,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    return Row(
      children: [
        Text(
          '\$${price.toInt()}',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '\$${originalPrice.toInt()}',
          style: const TextStyle(
            fontSize: 14,
            decoration: TextDecoration.lineThrough,
            color: AppColors.grey,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                color: AppColors.white,
                size: 16,
              ),
              const SizedBox(width: 4),
              Text(
                s.add,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
