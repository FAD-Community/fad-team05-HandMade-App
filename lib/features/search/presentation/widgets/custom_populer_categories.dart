import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/spacing.dart';

class CustomPopulerCategories extends StatelessWidget {
  const CustomPopulerCategories({
    super.key,
    required this.title,
    required this.buttonName,
  });
  final String title;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right:10.w, left: 10.w,bottom:1, top: 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.deepPurple,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      buttonName,
                      style: AppTextStyle.font14deepPurplepoppinssemiweight400
                          .copyWith(color: AppColors.primary),
                    ),
                    3.wSpace,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
