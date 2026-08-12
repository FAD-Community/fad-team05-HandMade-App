class WishlistItemModel {
  final String imageUrl;
  final String categoryKey;
  final String titleKey;
  final String sellerAvatarUrl;
  final String sellerNameKey;
  final bool isVerifiedSeller;
  final double rating;
  final int reviewsCount;
  final double price;
  final double originalPrice;
  final bool isBestSeller;
  final int discountPercentage;
  final int savedDaysAgo;

  WishlistItemModel({
    required this.imageUrl,
    required this.categoryKey,
    required this.titleKey,
    required this.sellerAvatarUrl,
    required this.sellerNameKey,
    required this.isVerifiedSeller,
    required this.rating,
    required this.reviewsCount,
    required this.price,
    required this.originalPrice,
    required this.isBestSeller,
    required this.discountPercentage,
    required this.savedDaysAgo,
  });
}
