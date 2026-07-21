import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/errors/validator/validotar.dart';
import 'package:hand_made/features/auth/presentation/bloc/resetpassword/cubit/resetpassword_cubit.dart';
import 'package:hand_made/core/widgets/custom_text_field.dart';

class CustomResetPasswordFields extends StatelessWidget {
  const CustomResetPasswordFields({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        final cubit = context.read<ResetPasswordCubit>();
        return Column(
          children: [
            CustomTextField(
              validator: Validator.validatePassword,
              prefixIcon: Icons.lock_open_outlined,
              suffixIcon: IconButton(
                onPressed: cubit.changePasswordVisibility,
                icon: Icon(
                  cubit.isPasswordHidden
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              label: AppString.password,
              hint: AppString.password,
              obscureText: cubit.isPasswordHidden,
              myController: cubit.passwordController,
            ),
            const SizedBox(height: 30),
            CustomTextField(
              validator: (value) {
                return Validator.validateConfirmPassword(
                  value,
                  cubit.confirmPasswordController.text,
                );
              },
              prefixIcon: Icons.lock_open_outlined,
              suffixIcon: IconButton(
                onPressed: cubit.changeConfirmPasswordVisibility,
                icon: Icon(
                  cubit.isConfirmPasswordHidden
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
              label: AppString.confirmPassword,
              hint: AppString.confirmPassword,
              obscureText: cubit.isConfirmPasswordHidden,
              myController: cubit.confirmPasswordController,
            ),
          ],
        );
      },
    );
  }
}
