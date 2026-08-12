import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/home/domain/enity/product_card_entity.dart';

class ProductCardDetails extends StatelessWidget {
  final ProductCardEntity product;

  const ProductCardDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  product.productName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.primary),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            product.description,
            style: const TextStyle(color: Colors.grey, fontSize: 14, height: 1.4),
          ),
        ],
      ),
    );
  }
}
