// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    required this.width,
    required this.height,
  });

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: width  ,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        color: backgroundColor,
        textColor: textColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.font16whitepoppinssemiweight500,
          ),
        ),
      ),
    );
  }
}
