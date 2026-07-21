import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/widgets/custom_button.dart';

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
    String buttonText = currentIndex == length - 1
        ? AppString.getstarted
        : AppString.next;
    return CustomButton(
      text: buttonText,
      onPressed: () {
        if (currentIndex == length - 1) {
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
