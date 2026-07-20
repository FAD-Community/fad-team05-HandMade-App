import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class CoustomButtonPrimary extends StatelessWidget {
  const CoustomButtonPrimary({
    super.key,
    this.ontap,
    required this.text,
    required this.h,
    required this.w,
  });
  final VoidCallback? ontap;
  final String text;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(right: w, top: h),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: ontap,
            child: Text(text, style: AppTextStyle.font14primarypoppins),
          ),
        ),
      ),
    );
  }
}
