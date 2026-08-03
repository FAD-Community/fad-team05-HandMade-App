class ProductCardEntity {
  final String sellerName;
  final String sellerHandle;
  final bool isVerified;
  final String sellerAvatarUrl;
  final String tag;
  final String productImageUrl;
  final String productName;
  final double price;
  final String description;
  final int likesCount;
  final int commentsCount;

  ProductCardEntity({
    required this.sellerName,
    required this.sellerHandle,
    required this.isVerified,
    required this.sellerAvatarUrl,
    required this.tag,
    required this.productImageUrl,
    required this.productName,
    required this.price,
    required this.description,
    required this.likesCount,
    required this.commentsCount,
  });

  static List<ProductCardEntity> get dummyData => [
        ProductCardEntity(
          sellerName: 'Mira Handcraft',
          sellerHandle: '@mira.craft',
          isVerified: true,
          sellerAvatarUrl: 'https://i.pravatar.cc/150?img=47',
          tag: 'Jewelry',
          productImageUrl: 'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?q=80&w=600&auto=format&fit=crop',
          productName: 'Moonstone Ring Set',
          price: 48.00,
          description: 'Sterling silver + raw moonstone. Each piece is one-of-a-kind, shaped by hand in my Brooklyn studio. ✨',
          likesCount: 1243,
          commentsCount: 87,
        ),
        ProductCardEntity(
          sellerName: 'Wood & Root',
          sellerHandle: '@woodroot',
          isVerified: false,
          sellerAvatarUrl: 'https://i.pravatar.cc/150?img=33',
          tag: 'Decor',
          productImageUrl: 'https://images.unsplash.com/photo-1574538298290-7d121bcde393?q=80&w=600&auto=format&fit=crop',
          productName: 'Hand-carved Bowl',
          price: 120.00,
          description: 'A beautiful hand-carved wooden bowl made from sustainable oak. Perfect for your living room.',
          likesCount: 852,
          commentsCount: 32,
        ),
      ];
}
