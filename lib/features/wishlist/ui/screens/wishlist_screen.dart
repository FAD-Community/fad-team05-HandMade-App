import 'package:flutter/material.dart';
import 'package:hand_made/features/wishlist/data/models/wishlist_dummy_data.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_item_card.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_header.dart';
import 'package:hand_made/features/wishlist/ui/widgets/wishlist_summary_bar.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = WishlistDummyData.dummyItems;
    return SafeArea(
      child: Column(
        children: [
          WishlistHeader(
            savedItemsCount: items.length,
            onBackPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            onSelectPressed: () {
              // Handle select action
            },
          ),
          WishlistSummaryBar(
            savedCount: items.length,
            inCartCount: 1,
            total: 291.0,
            onAddAllPressed: () {
              // Handle Add All action
            },
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              itemCount: items.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return WishlistItemCard(item: items[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
