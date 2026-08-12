import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/features/auth/presentation/bloc/resetpassword/cubit/resetpassword_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_part_field_reset_password.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_part_reset_password.dart';
import 'package:hand_made/l10n/app_localizations.dart';


class CustomResetPasswordBody extends StatelessWidget {

  const CustomResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
 final s = AppLocalizations.of(context)!;
    final cubit = context.read<ResetPasswordCubit>();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Form(
          key: cubit.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPartResetPassword(),
              SizedBox(height: 30.h),
              CustomResetPasswordFields(),
              SizedBox(height: 30.h),
              CustomButton(
                text: s.confirmPassword,
                onPressed: () {
                  if (cubit.formKey.currentState!.validate()) {
                    // reset password
                  }
                }, width: double.infinity, height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
