import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/l10n/app_localizations.dart';

import 'featured_collection_card.dart';

class FeaturedCollectionSection extends StatelessWidget {
  const FeaturedCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
     final s = AppLocalizations.of(context)!;
    // Dummy Data
    final List<Map<String, String>> collections = [
      {
        'title': 'Linen & Ivory',
        'subtitle': '24 pieces',
        'imageUrl':
            'https://images.unsplash.com/photo-1573408301145-b98c41490986?q=80&w=600&auto=format&fit=crop', // A jewelry/craft related image
      },
      {
        'title': 'Earth Tones',
        'subtitle': '18 pieces',
        'imageUrl':
            'https://images.unsplash.com/photo-1610701596007-11502861dcfa?q=80&w=600&auto=format&fit=crop', // A pottery related image
      },
      {
        'title': 'Midnight Blue',
        'subtitle': '31 pieces',
        'imageUrl':
            'https://images.unsplash.com/photo-1605814571994-5cb3b0ffba07?q=80&w=600&auto=format&fit=crop', // A craft related image
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                s.featuredCollection,
                style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
                  color: AppColors.userNameColor,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                     s.seeAll,
                      style: AppTextStyle.font14primarypoppins.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.primary,
                      size: 12.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 173.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: collections.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final item = collections[index];
              return FeaturedCollectionCard(
                title: item['title'] ?? '',
                subtitle: item['subtitle'] ?? '',
                imageUrl: item['imageUrl'] ?? '',
              );
            },
          ),
        ),
      ],
    );
  }
}
