import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/config/cache/cache_key.dart';

import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustumButtonOnboarding extends StatelessWidget {
  const CustumButtonOnboarding({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.length,
  });

  final PageController pageController;
  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    String buttonText = currentIndex == length - 1 ? s.getStarted : s.next;
    return CustomButton(
      text: buttonText,
      onPressed: () async{
        if (currentIndex == length - 1) {
           await CacheHelper.saveData(
            key: CacheKey.isFirstTime,
            value: false,
          );
          Navigator.pushReplacementNamed(
            // ignore: use_build_context_synchronously
            context,
            Routes.firstScreen,
          );
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      width: double.infinity,
      height: 50.h,
    );
  }
}
