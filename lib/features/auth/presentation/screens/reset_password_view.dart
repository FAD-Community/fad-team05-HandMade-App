import 'package:flutter/material.dart';

import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_reset_password_body.dart';


class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softIvory,
      body: CustomResetPasswordBody(),
    );
  }
}
