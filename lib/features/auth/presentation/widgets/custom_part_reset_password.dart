import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';

import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomPartResetPassword extends StatelessWidget {
  const CustomPartResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    
    return Column(
      children: [
        CustumTextOnboarding(
          text: s.newPassword,
          style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 16.h),
        CustumTextOnboarding(
          text: s.pleaseWrite,
          style: AppTextStyle.font16blackpoppinssemiw500.copyWith(
            color: AppColors.darkSlate,
          ),
        ),
      ],
    );
  }
}
