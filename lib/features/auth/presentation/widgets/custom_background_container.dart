import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.text,

    this.onTap,
  });

  final String text;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: .22.sh,
      width: double.infinity,
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
                  fontSize: 25.sp,
                  color: AppColors.offWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
