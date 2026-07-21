import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'header_user_info.dart';
import 'header_action_button.dart';

class HomeHeader extends StatelessWidget {
  final String userName, imageUrl;
  final int notifications;
  const HomeHeader({
    super.key,
    required this.userName,
    required this.imageUrl,
    this.notifications = 0,
  });

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.fromLTRB(
      16.w,
      MediaQuery.paddingOf(context).top + 12.h,
      16.w,
      16.h,
    ),
    decoration: BoxDecoration(
      color: AppColors.whiteweak,
      border: Border(
        bottom: BorderSide(
          color: AppColors.lightBorderColor.withValues(alpha: 0.6),
          width: 0.8,
        ),
      ),
    ),
    child: Row(
      children: [
        Expanded(
          child: HeaderUserInfo(userName: userName, imageUrl: imageUrl),
        ),
        const HeaderActionButton(
          imagePath: 'assets/images/chat_image_icon.png',
        ),
        SizedBox(width: 8.w),
        HeaderActionButton(
          imagePath: 'assets/images/notification_image_icon.png',
          badgeCount: notifications,
        ),
      ],
    ),
  );
}
