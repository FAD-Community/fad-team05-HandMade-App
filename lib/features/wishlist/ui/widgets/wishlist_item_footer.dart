import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/l10n/app_localizations.dart';


class WishlistItemFooter extends StatelessWidget {
  final int savedDaysAgo;

  const WishlistItemFooter({super.key, required this.savedDaysAgo});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        children: [
          const Icon(Icons.favorite, color: AppColors.primary, size: 18),
          const SizedBox(width: 6),
          Text(
            s.savedDaysAgo(savedDaysAgo),
            style: const TextStyle(color: AppColors.greysoft, fontSize: 13),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                s.view,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
                size: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
