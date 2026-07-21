import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_back_button.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.text,
    this.showBackButton = false,
    this.onTap,
  });

  final String text;
  final bool showBackButton;
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
                  color: AppColors.whiteweak,
                ),
              ),
            ),
            if (showBackButton)
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 10.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CustomBackButton(
                    color: AppColors.white,
                    backgroundColor: AppColors.softIvory.withValues(alpha: .18),
                    onTap: onTap,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
