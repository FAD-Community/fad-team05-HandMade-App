import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustumOnboardingImage extends StatelessWidget {
  const CustumOnboardingImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image)),
      ),
      width: 228.w,
      height: 291.h,
    );
  }
}
