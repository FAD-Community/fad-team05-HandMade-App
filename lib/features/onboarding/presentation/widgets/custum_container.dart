import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/spacing.dart';

class CustumContainer extends StatelessWidget {
  const CustumContainer({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });
  final VoidCallback onTap;
  final Icon icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: .22.sh,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.warmCream.withValues(alpha: .70),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            20.hSpace,
            SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.softIvory,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                height: 60.h,
                width: 60.w,
                child: icon,
              ),
            ),
            20.hSpace,
            Text(
              title,
              style: AppTextStyle.font16whitepoppinssemiweight500.copyWith(
                color: AppColors.semiTransparentBlack,
              ),
            ),
            10.hSpace,
            Text(
              description,
              style: AppTextStyle.font16whitepoppinssemiweight500.copyWith(
                color: AppColors.semiTransparentBlack,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
