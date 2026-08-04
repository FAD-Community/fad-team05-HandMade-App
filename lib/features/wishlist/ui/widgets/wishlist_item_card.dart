import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/wishlist/data/models/wishlist_item_model.dart';
import 'package:hand_made/generated/l10n.dart';
import 'wishlist_item_image.dart';
import 'wishlist_item_header.dart';
import 'wishlist_item_seller_info.dart';
import 'wishlist_item_rating.dart';
import 'wishlist_item_price_row.dart';
import 'wishlist_item_footer.dart';

class WishlistItemCard extends StatelessWidget {
  final WishlistItemModel item;
  const WishlistItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    String title = item.titleKey == 'moonstoneStackingRings'
        ? s.moonstoneStackingRings
        : item.titleKey;
    String category = item.categoryKey == 'jewelry'
        ? s.jewelry
        : item.categoryKey;
    String sellerName = item.sellerNameKey == 'miraHandcraft'
        ? s.miraHandcraft
        : item.sellerNameKey;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.lightBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: WishlistItemImage(item: item, isAr: isAr),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 12.0,
                    right: 12.0,
                    left: 4.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WishlistItemHeader(category: category),
                      const SizedBox(height: 8),
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 6),
                      WishlistItemSellerInfo(
                        avatarUrl: item.sellerAvatarUrl,
                        name: sellerName,
                        isVerified: item.isVerifiedSeller,
                      ),
                      const SizedBox(height: 6),
                      WishlistItemRating(
                        rating: item.rating,
                        reviewsCount: item.reviewsCount,
                      ),
                      const SizedBox(height: 12),
                      WishlistItemPriceRow(
                        price: item.price,
                        originalPrice: item.originalPrice,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: AppColors.lightBorderColor, height: 1),
          WishlistItemFooter(savedDaysAgo: item.savedDaysAgo),
        ],
      ),
    );
  }
}
