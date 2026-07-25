import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart' show AppTextStyle;
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';
import 'package:hand_made/features/otp/presentation/cubit/cubit/otp_cubit.dart';
import 'package:hand_made/features/otp/presentation/widgets/custom_app_bar_otp.dart';
import 'package:hand_made/features/otp/presentation/widgets/custom_otp_field.dart';
import 'package:hand_made/features/otp/presentation/widgets/custom_under_otp_field.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomOtpBody extends StatelessWidget {
  const CustomOtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final cubit = context.read<OtpCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(alignment: Alignment.topCenter, child: CustomAppBarOtp()),
          SizedBox(height: MediaQueryHelper.height(context, .22)),
          CustumTextOnboarding(
            text: s.verifyCode,
            style: AppTextStyle.font20darkbrownpoppinssemibold.copyWith(
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 22.h),
          CustumTextOnboarding(
            text: s.please,
            style: AppTextStyle.font16blackpoppinssemiw500.copyWith(
              color: AppColors.darkSlate,
            ),
          ),
          SizedBox(height: MediaQueryHelper.height(context, .05)),
          CustomOtpField(controller: cubit.otpController),
          SizedBox(height: MediaQueryHelper.height(context, .05)),
          CustomUnderOtpField(),
        ],
      ),
    );
  }
}
