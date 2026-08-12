import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_state.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_four_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_confirm_password.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_divider.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_one_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_three_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_two_container.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomRegisterColumn extends StatelessWidget {
  const CustomRegisterColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    final cubit = context.read<RegisterCubit>();
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Navigator.pushReplacementNamed(context, Routes.verifyEmail);
          // بعدين هنا ممكن تعمل Navigation
          // Navigator.pushNamed(context, Routes.home);
        }

        if (state is RegisterFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        final isLoading = state is RegisterLoading;
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQueryHelper.height(context, 0.01)),
              Column(
                children: [
                  CustomSectionOneContainer(
                    isPasswordHidden: cubit.isPasswordHidden,
                    onTogglePassword: cubit.changePasswordVisibility,
                    emailController: cubit.emailController,
                    passwordController: cubit.passwordController,
                  ),
                  SizedBox(height: MediaQueryHelper.height(context, 0.032)),
                  CustomConfirmPasswordField(
                    confirmPasswordController: cubit.confirmPasswordController,
                    passwordController: cubit.passwordController,
                    isHidden: cubit.isConfirmPasswordHidden,
                    onToggle: cubit.changeConfirmPasswordVisibility,
                  ),
                ],
              ),
              SizedBox(height: MediaQueryHelper.height(context, 0.01)),
              CustomSectionTwoContainer(
                text: isLoading
                    ? "loading...."
                    : s.signUp,
                onPressed: isLoading
                    ? () {}
                    : () {
                        cubit.register();
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
      },
    );
  }
}
