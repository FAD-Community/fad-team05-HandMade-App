import 'package:flutter/material.dart';
import 'package:hand_made/features/home/domain/enity/product_card_entity.dart';

class ProductCardActions extends StatelessWidget {
  final ProductCardEntity product;

  const ProductCardActions({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
      child: Row(
        children: [
          _buildActionIcon(Icons.favorite_border, product.likesCount.toString()),
          const SizedBox(width: 16),
          _buildActionIcon(Icons.chat_bubble_outline, product.commentsCount.toString()),
          const SizedBox(width: 16),
          _buildActionIcon(Icons.share_outlined, null),
          const Spacer(),
          _buildActionIcon(Icons.bookmark_border, null),
        ],
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, String? count) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600], size: 24),
        if (count != null) ...[
          const SizedBox(width: 6),
          Text(
            count,
            style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500),
          ),
        ],
      ],
    );
  }
}
