import 'package:flutter/material.dart';
import 'package:hand_made/features/home/domain/enity/product_card_entity.dart';
import 'package:hand_made/features/home/presentation/widgets/product_card/product_card_actions.dart';
import 'package:hand_made/features/home/presentation/widgets/product_card/product_card_details.dart';
import 'package:hand_made/features/home/presentation/widgets/product_card/product_card_header.dart';
import 'package:hand_made/features/home/presentation/widgets/product_card/product_card_image.dart';

class ProductCard extends StatelessWidget {
  final ProductCardEntity product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ProductCardHeader(product: product),
          ProductCardImage(product: product),
          ProductCardDetails(product: product),
          ProductCardActions(product: product),
        ],
      ),
    );
  }
}
