import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/constants/assets.dart';
import 'package:hand_made/features/onboarding/models/onboarding_model.dart';

final List<OnboardingModel> onboardingList = [
  OnboardingModel(
    image: Assets.imagesOnboardingOnboarding1,
    title: AppString.discoverHandmade,
    description: AppString.explore,
  ),

  OnboardingModel(
    image: Assets.imagesOnboardingOnboarding2,
    title: AppString.supportCreators,
    description: AppString.follow,
  ),

  OnboardingModel(
    image: Assets.imagesOnboardingOnboarding3,
    title: AppString.shopwithConfidence,
    description: AppString.save,
  ),
];
