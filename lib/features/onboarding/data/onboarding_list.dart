import 'package:flutter/material.dart';

import 'package:hand_made/core/constants/assets.dart';
import 'package:hand_made/features/onboarding/models/onboarding_model.dart';
import 'package:hand_made/generated/l10n.dart';

List<OnboardingModel> getOnboardingList(BuildContext context) {
  final s = S.of(context);

  return [
    OnboardingModel(
      image: Assets.imagesOnboardingOnboarding1,
      title: s.discoverHandmade,
      description: s.explore,
    ),
    OnboardingModel(
      image: Assets.imagesOnboardingOnboarding2,
      title: s.supportCreators,
      description: s.follow,
    ),
    OnboardingModel(
      image: Assets.imagesOnboardingOnboarding3,
      title: s.shopWithConfidence,
      description: s.save,
    ),
  ];
}