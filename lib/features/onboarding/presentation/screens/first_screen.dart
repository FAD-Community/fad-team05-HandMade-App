import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/config/cache/cache_key.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/assets.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_first_image.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_icon_style.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custum_container.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
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
              onTap: () async {
                await CacheHelper.saveData(key: CacheKey.role, value: "Buyer");
                // ignore: use_build_context_synchronously
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
              onTap: () async {
                await CacheHelper.saveData(key: CacheKey.role, value: "Seller");
                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, Routes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
