import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/coustom_button_primary.dart';
import 'package:hand_made/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/Custom_section_four_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_divider.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_three_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_one_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_two_container.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomLoginColumn extends StatelessWidget {
  const CustomLoginColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context)!;
    final cubit = context.read<LoginCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQueryHelper.height(context, 0.01)),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              final cubit = context.read<LoginCubit>();
              return CustomSectionOneContainer(
                isPasswordHidden: cubit.isPasswordHidden,
                onTogglePassword: () {
                  cubit.changePasswordVisibility();
                },
                emailController: cubit.emailController,
                passwordController: cubit.passwordController,
              );
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.01)),
          CoustomButtonPrimary(
            ontap: () {
              Navigator.pushNamed(context, Routes.forgotPassword);
            },
            text: s.forgotPassword,
            h: .012.sh,
            w: 0,
          ),
          CustomSectionTwoContainer(
            text: s.signUp,
            onPressed: () async {
              cubit.login();
              // Navigator.pushNamed(context, Routes.home);
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.02)),
          CustomSectionThreeContainer(
            text: s.signUp,
            ontap: () {
              if (cubit.formKey.currentState!.validate()) {
                cubit.login();
              }
              Navigator.pushNamed(context, Routes.register);
            },
          ),
          SizedBox(height: MediaQueryHelper.height(context, 0.04)),
          CustomDivider(text: s.orLogin),
          SizedBox(height: MediaQueryHelper.height(context, 0.04)),
          CustomSectionFourContainer(),
        ],
      ),
    );
  }
}
