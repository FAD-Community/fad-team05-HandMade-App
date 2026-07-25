import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_back_button.dart';
import 'package:hand_made/features/onboarding/presentation/widgets/custom_text_onboarding.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomAppBarOtp extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarOtp({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,

      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CustomBackButton(
          backgroundColor: AppColors.warmNude.withValues(alpha: 30),
          color: AppColors.deepPurple,
          onTap: () => Navigator.pop(context),
        ),
      ),

      title: CustumTextOnboarding(
        text: s.otpConfirmation,
        style: AppTextStyle.font16blackpoppinssemiw500.copyWith(
          fontSize: 21.sp,
        ),
      ),
    );
  }
}