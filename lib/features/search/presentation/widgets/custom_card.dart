import 'package:flutter/material.dart'
    show StatelessWidget, Card, ListTile, Icons;
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/features/search/data/models/seller_model.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.seller, required this.onFollow});

  final SellerModel seller;
  final VoidCallback onFollow;

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Card(
        color: AppColors.cardBackground,
        child: Container(
          height: 85.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.categoryBorder),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              leading: Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  image: DecorationImage(
                    image: AssetImage(seller.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                seller.name,
                style: AppTextStyle.font14deepPurplepoppinssemiweight400.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    seller.category,
                    style: AppTextStyle.font14deepPurplepoppinssemiweight400,
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.gold, size: 18),
                      SizedBox(width: 4.w),
                      Text(seller.rating.toString()),
                      SizedBox(width: 8.w),
                      Text(seller.sales),
                    ],
                  ),
                ],
              ),
              trailing: SizedBox(
                width: 95.w,
                child: CustomButton(
                  text: s.follow,
                  onPressed: onFollow,
                  width: 95.w,
                  height: 25.h,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
