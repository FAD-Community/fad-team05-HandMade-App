import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/assets.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_first_image.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_icon_style.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custum_container.dart';
import 'package:hand_made/generated/l10n.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustumFirstImage(image: Assets.imagesSplashSplashPhoto),
            SizedBox(height: MediaQueryHelper.height(context, .03)),
            CustumContainer(
              icon: Icon(AppIcons.buyer, size: 30.sp, color: AppColors.primary),
              title: s.iAmBuyer,
              description: s.order,
              onTap: () {
                Navigator.pushNamed(context, Routes.login);
              },
            ),
            SizedBox(height: MediaQueryHelper.height(context, .03)),
            CustumContainer(
              icon: Icon(
                AppIcons.seller,
                size: 30.sp,
                color: AppColors.primary,
              ),
              title: s.iAmSeller,
              description: s.crave,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
