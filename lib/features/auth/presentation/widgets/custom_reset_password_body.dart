import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/widgets/custom_button.dart';
import 'package:hand_made/features/auth/presentation/bloc/resetpassword/cubit/resetpassword_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_part_field_reset_password.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_part_reset_password.dart';

class CustomResetPasswordBody extends StatelessWidget {
  const CustomResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 22.h),
              CustomResetPasswordFields(),
              SizedBox(height: 30.h),
              CustomButton(
                text: AppString.confirmPassword,
                onPressed: () {
                  if (cubit.formKey.currentState!.validate()) {
                    // reset password
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
