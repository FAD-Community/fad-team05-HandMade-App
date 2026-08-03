import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/home/domain/enity/product_card_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCardImage extends StatelessWidget {
  final ProductCardEntity product;

  const ProductCardImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: product.productImageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Text(
              product.tag,
              style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary, fontSize: 12),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: CircleAvatar(
            backgroundColor: AppColors.primary,
            radius: 24,
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
