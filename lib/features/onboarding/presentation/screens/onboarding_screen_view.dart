import 'package:flutter/material.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/spacing/spacing.dart';
import 'package:hand_made/features/onboarding/data/onboarding_list.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custum_button_onboarding.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_smooth_indicator.dart';

class OnboardingScreenview extends StatefulWidget {
  const OnboardingScreenview({super.key});

  @override
  State<OnboardingScreenview> createState() => _OnboardingScreenviewState();
}

class _OnboardingScreenviewState extends State<OnboardingScreenview> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      final onboardingList = getOnboardingList(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomPageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: MediaQueryHelper.height(context, .017)),
            CustomSmoothIndicator(
              controller: pageController,
              count: onboardingList.length,
            ),
            SizedBox(height: MediaQueryHelper.height(context, .05)),
            CustumButtonOnboarding(
              pageController: pageController,
              currentIndex: currentIndex,
              length: onboardingList.length,
            ),
            20.hSpace,
          ],
        ),
      ),
    );
  }
}
