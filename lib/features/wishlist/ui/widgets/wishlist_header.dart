import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_back_button.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_select_button.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class WishlistHeader extends StatelessWidget {
  final int savedItemsCount;
  final VoidCallback onSelectPressed;
  final VoidCallback onBackPressed;

  const WishlistHeader({
    super.key,
    required this.savedItemsCount,
    required this.onSelectPressed,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          WishlistBackButton(onPressed: onBackPressed),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.myWishlist,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.userNameColor,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  s.savedItems(savedItemsCount),
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.greysoft,
                  ),
                ),
              ],
            ),
          ),
          WishlistSelectButton(onPressed: onSelectPressed, label: s.select),
        ],
      ),
    );
  }
}
