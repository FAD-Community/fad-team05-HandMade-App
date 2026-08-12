import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    final List<Map<String, String>> categories = [
      {"title": s.jewelry, "image": "assets/images/search/Jewelry.png"},
      {"title": s.pottery, "image": "assets/images/search/Pottery.png"},
      {"title": s.candles, "image": "assets/images/search/Candles.png"},
      {"title": s.bags, "image": "assets/images/search/Bags.png"},
      {"title": s.homeDecor, "image": "assets/images/search/HomeDecor.png"},
      {"title": s.crochet, "image": "assets/images/search/Crochet.png"},
    ];

    return Padding(
      padding: EdgeInsets.only(right: 10.w, left: 10.w),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: InkWell(
              onTap: () {},
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(categories[index]["image"]!, fit: BoxFit.fill),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.transparent,
                          AppColors.imageOverlayDark,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8.w,
                    bottom: 8.h,
                    child: Text(
                      categories[index]["title"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
