import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';

import 'package:hand_made/features/auth/presentation/widgets/custom_back_button.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';

class CustomAppBarOtp extends StatelessWidget {
  const CustomAppBarOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBackButton(
            color: AppColors.deepPurple,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(width: MediaQueryHelper.height(context, 0.055)),
          CustumTextOnboarding(
            text: AppString.otpConfirmation,
            style: AppTextStyle.font16blackpoppinssemiw500.copyWith(
              fontSize: 25.sp,
            ),
          ),
        ],
      ),
    );
  }
}
