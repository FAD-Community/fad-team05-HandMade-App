import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/spacing/spacing.dart';
import 'package:hand_made/features/search/presentation/widgets/product_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        "title": "Moonstone Ring",
        "image": "assets/images/search/Jewelry.png",
        "price": "\$48",
      },
      {
        "title": "Ceramic Vase",
        "image": "assets/images/search/Pottery.png",
        "price": "\$72",
      },
      {
        "title": "Woven Tote",
        "image": "assets/images/search/Bags.png",
        "price": "\$65",
      },
      {
        "title": "Crochet Bag",
        "image": "assets/images/search/Crochet.png",
        "price": "\$35",
      },
    ];
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            title: products[index]["title"],
            image: products[index]["image"],
            price: products[index]["price"],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return 7.hSpace;
        },
        itemCount: products.length,
      ),
    );
  }
}
