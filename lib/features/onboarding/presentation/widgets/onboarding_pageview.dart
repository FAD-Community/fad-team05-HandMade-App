import 'package:flutter/material.dart';
import 'package:hand_made/core/spacing/spacing.dart';
import 'package:hand_made/features/onboarding/data/onboarding_list.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_page_view.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custum_button_onboarding.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_smooth_indicator.dart';

class OnboardingPageview extends StatefulWidget {
  const OnboardingPageview({super.key});

  @override
  State<OnboardingPageview> createState() => _OnboardingPageviewState();
}

class _OnboardingPageviewState extends State<OnboardingPageview> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
      final onboardingList = getOnboardingList(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomPageView(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: pageController,
              ),
              20.hSpace,
              CustomSmoothIndicator(
                controller: pageController,
                count: onboardingList.length,
              ),
              SizedBox(child: 60.hSpace),
              CustumButtonOnboarding(
                pageController: pageController,
                currentIndex: currentIndex,
                length: onboardingList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
