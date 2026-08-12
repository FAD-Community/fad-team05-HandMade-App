import 'package:flutter/material.dart';
import 'package:hand_made/features/search/data/models/seller_model.dart';
import 'package:hand_made/features/search/presentation/widgets/custom_card.dart';

class ListViewSeller extends StatelessWidget {
  const ListViewSeller({super.key});

  @override
  Widget build(BuildContext context) {
    final sellers = [
      SellerModel(
        name: "Mostafa Hosny",
        category: "Bags",
        image: "assets/images/search/Bags.png",
        rating: 3.1,
        sales: "1.2k sales",
      ),
      SellerModel(
        name: "Ahmed Saad",
        category: "Home Decor",
        image: "assets/images/search/HomeDecor.png",
        rating: 4.8,
        sales: "850 sales",
      ),
      SellerModel(
        name: "Mohamed Mosaad",
        category: "Crochet",
        image: "assets/images/search/Crochet.png",
        rating: 4.9,
        sales: "430 sales",
      ),
      SellerModel(
        name: "Said Mohamed",
        category: "Pottery",
        image: "assets/images/search/Pottery.png",
        rating: 5,
        sales: "750 sales",
      ),
    ];
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: sellers.length,
      itemBuilder: (context, index) {
        return CustomCard(seller: sellers[index], onFollow: () {});
      },
    );
  }
}
