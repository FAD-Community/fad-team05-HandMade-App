import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';

class HeaderActionButton extends StatelessWidget {
  final String imagePath;
  final int badgeCount;
  final VoidCallback? onTap;

  const HeaderActionButton({super.key, required this.imagePath, this.badgeCount = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 36.w,
            height: 36.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle, 
              border: Border.all(color: AppColors.lightBorderColor, width: 0.8),
            ),
            child: Image.asset(imagePath, width: 20.w, height: 20.w),
          ),
          if (badgeCount > 0)
            Positioned(
              right: -2, top: -2,
              child: CircleAvatar(
                radius: 8.r, backgroundColor: AppColors.primary,
                child: Text('$badgeCount', style: const TextStyle(color: Colors.white, fontSize: 10)),
              ),
            ),
        ],
      ),
    );
  }
}
