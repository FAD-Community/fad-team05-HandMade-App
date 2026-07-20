import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.textColor = Colors.white,
  });

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQueryHelper.width(context, .02) ),
        child: MaterialButton(
          onPressed: onPressed,
          color: backgroundColor,
          textColor: textColor,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            text,
            style: AppTextStyle.font16whitepoppinssemiweight500,
          ),
        ),
      ),
    );
  }
}
