import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.backgroundColor,
    this.onTap,
    this.color,
  });

  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 35.w,
        height: 35.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: backgroundColor,
        ),
        child: Center(
          child: Icon(color: color, Icons.arrow_back_ios_new_rounded),
        ),
      ),
    );
  }
}
