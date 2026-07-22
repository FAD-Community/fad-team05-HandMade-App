import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/coustom_button_primary.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custum_onboarding_image.dart';
import 'package:hand_made/generated/l10n.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.onSkip,
  });

  final String image;
  final String title;
  final String description;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SafeArea(
      child: CustomScrollView(
        clipBehavior: Clip.none,
        slivers: [
          SliverToBoxAdapter(
            child: CoustomButtonPrimary(
              text: s.skip,
              ontap: onSkip,
              h: .02.sh,
              w: .05.sw,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustumOnboardingImage(image: image),
                SizedBox(height: MediaQueryHelper.height(context, .02)),
                CustumTextOnboarding(
                  text: title,
                  style: AppTextStyle.font20darkbrownpoppinssemibold,
                ),
                SizedBox(height: MediaQueryHelper.height(context, .016)),
                CustumTextOnboarding(
                  text: description,
                  style: AppTextStyle.font14primarypoppins.copyWith(
                    color: AppColors.grey,
                  ),
                ),
                SizedBox(height: MediaQueryHelper.height(context, .011)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
