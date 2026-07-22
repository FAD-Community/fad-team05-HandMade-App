import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';

import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/core/widgets/custom_text_auth.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomUnderOtpField extends StatelessWidget {
  const CustomUnderOtpField({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        CustomTextAuth(text: s.doNotReceiveOtp),
        SizedBox(height: MediaQueryHelper.height(context, 0.01)),
        InkWell(
          onTap: () {},
          child: CustumTextOnboarding(
            isUnderlined: true,
            text: s.resendCode,
            style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
              color: AppColors.primary,
              fontSize: 17.sp,
            ),
          ),
        ),
        SizedBox(height: MediaQueryHelper.height(context, 0.02)),
        CustomButton(text: s.verify, onPressed: () {}),
      ],
    );
  }
}
