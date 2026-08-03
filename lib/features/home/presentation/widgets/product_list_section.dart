import 'package:flutter/material.dart';
import 'package:hand_made/features/home/domain/enity/product_card_entity.dart';
import 'package:hand_made/features/home/presentation/widgets/product_card/product_card.dart';

class ProductListSection extends StatelessWidget {
  const ProductListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductCardEntity.dummyData;

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          product: products[index],
        );
      },
    );
  }
}
