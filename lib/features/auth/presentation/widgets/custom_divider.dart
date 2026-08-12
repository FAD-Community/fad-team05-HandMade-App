import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/widgets/custom_divider_text.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(color: AppColors.primary, thickness: .4, height: 1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Align(child: CustomDividerText(text: text)),
          ),
          Expanded(
            child: Divider(color: AppColors.primary, thickness: .4, height: 1),
          ),
        ],
      ),
    );
  }
}
