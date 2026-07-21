import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart' show AppColors;
import 'package:hand_made/core/constants/assets.dart';

class CoustomSplashBody extends StatelessWidget {
  const CoustomSplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.warmNude, AppColors.primary],
        ),
      ),
      child: Align(
        child: Container(
          padding: EdgeInsets.only(bottom: 90.h),
          width: 352.w,
          height: 389.h,
          child: Image.asset(
            Assets.imagesSplashSplashPhoto,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
