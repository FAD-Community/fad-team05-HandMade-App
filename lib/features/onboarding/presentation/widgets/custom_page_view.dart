import 'package:flutter/material.dart';
import 'package:hand_made/features/onboarding/data/onboarding_list.dart';
import 'package:hand_made/features/onboarding/presentation/screens/onboarding_view.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
    required this.onPageChanged,
    required this.controller,
  });

final ValueChanged<int> onPageChanged;
  final PageController controller;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
      final onboardingList = getOnboardingList(context);
    return PageView.builder(
      controller: widget.controller,
      itemCount: onboardingList.length,
      onPageChanged: (index) {
        widget.onPageChanged(index);
      },
      itemBuilder: (context, index) {
        return OnboardingPage(
          image: onboardingList[index].image,
          title: onboardingList[index].title,
          description: onboardingList[index].description,
          onSkip: () {
            widget.controller.animateToPage(
              onboardingList.length - 1,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        );
      },
    );
  }
}
