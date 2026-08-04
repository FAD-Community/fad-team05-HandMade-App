import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_stat_column.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_divider.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_add_all_button.dart';
import 'package:hand_made/generated/l10n.dart';

class WishlistSummaryBar extends StatelessWidget {
  final int savedCount;
  final int inCartCount;
  final double total;
  final VoidCallback onAddAllPressed;

  const WishlistSummaryBar({super.key, required this.savedCount, required this.inCartCount, required this.total, required this.onAddAllPressed});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.lightBorderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WishlistStatColumn(value: savedCount.toString(), label: s.savedCapital, valueColor: AppColors.black),
          const WishlistDivider(),
          WishlistStatColumn(value: inCartCount.toString(), label: s.inCartCapital, valueColor: AppColors.discountColor),
          const WishlistDivider(),
          WishlistStatColumn(value: '\$${total.toStringAsFixed(0)}', label: s.totalCapital, valueColor: AppColors.primary),
          const Spacer(),
          WishlistAddAllButton(onPressed: onAddAllPressed, label: s.addAll),
        ],
      ),
    );
  }
}
