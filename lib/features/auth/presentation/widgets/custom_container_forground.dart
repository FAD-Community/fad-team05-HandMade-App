import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class CustomContainerForground extends StatelessWidget {
  const CustomContainerForground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
        ),
        clipBehavior: Clip.none,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, right: 7.w, left: 7.w),
          child: child,
        ),
      ),
    );
  }
}
