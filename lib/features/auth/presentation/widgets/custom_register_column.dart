import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/Custom_section_four_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_confirm_password.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_divider.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_one_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_three_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_two_container.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomRegisterColumn extends StatelessWidget {
  const CustomRegisterColumn({super.key});

  @override
  Widget build(BuildContext context) {final s = S.of(context);
    final cubit = context.read<RegisterCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQueryHelper.height(context, 0.01)),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return Column(
                children: [
                  CustomSectionOneContainer(
                    isPasswordHidden: cubit.isPasswordHidden,
                    onTogglePassword: cubit.changePasswordVisibility,
                    emailController: cubit.emailController,
                    passwordController: cubit.passwordController,
                  ),
                  SizedBox(height: MediaQueryHelper.height(context, 0.032)),
                  CustomConfirmPasswordField(
                    passwordController: cubit.confirmPasswordController,
                    isHidden: cubit.isConfirmPasswordHidden,
                    onToggle: cubit.changeConfirmPasswordVisibility,
                  ),
                ],
              );
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.01)),
          CustomSectionTwoContainer(
            text: s.signUp,
            onPressed: () {
              cubit.register();
              Navigator.pushNamed(context, Routes.otp);
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.02)),
          CustomSectionThreeContainer(
            text: s.login,
            ontap: () {
              Navigator.pushNamed(context, Routes.login);
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.022)),
          CustomDivider(text: s.orSignUp),
          SizedBox(height: MediaQueryHelper.height(context, 0.02)),
          CustomSectionFourContainer(),
        ],
      ),
    );
  }
}
