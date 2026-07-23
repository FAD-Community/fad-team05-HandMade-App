import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class HeaderUserInfo extends StatelessWidget {
  final String userName, imageUrl;

  const HeaderUserInfo({
    super.key,
    required this.userName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 22.r, backgroundImage: NetworkImage(imageUrl)),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: AppTextStyle.font12greypoppinssemiweight400.copyWith(
                  color: AppColors.goodmornigText,
                ),
              ),
              Text(
                userName,
                style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
                  fontSize: 18.sp,
                  color: AppColors.userNameColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
