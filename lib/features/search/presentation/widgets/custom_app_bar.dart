import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/l10n/app_localizations.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
     final s = AppLocalizations.of(context)!;
    return SafeArea(
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.homeScreenBgColor,
          border: Border(
            bottom: BorderSide(color: AppColors.lightBorderColor, width: .9),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.all(8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Text(
                     s.search,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 35.w,
                height: 35.h,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.3),
                      offset: const Offset(0, 4),
                      blurRadius: 6,
                      spreadRadius: -1,
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16.r),
                    onTap: () {},
                    child: Center(
                      child: Icon(
                        Icons.tune_rounded,
                        color: Colors.white,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
