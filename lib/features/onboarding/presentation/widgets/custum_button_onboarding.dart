import 'package:flutter/material.dart';
import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/generated/l10n.dart';

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
    final s = S.of(context);
    String buttonText = currentIndex == length - 1 ? s.getStarted : s.next;
    return CustomButton(
      text: buttonText,
      onPressed: () {
        if (currentIndex == length - 1) {
          CacheHelper.saveData(key: 'onboarding', value: true);
          Navigator.pushReplacementNamed(context, Routes.firstScreen);
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }
}
