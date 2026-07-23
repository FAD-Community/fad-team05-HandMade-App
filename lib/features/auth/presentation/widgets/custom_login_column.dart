import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/coustom_button_primary.dart';
import 'package:hand_made/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/Custom_section_four_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_divider.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_three_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_one_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_section_two_container.dart';

class CustomLoginColumn extends StatelessWidget {
  const CustomLoginColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<LoginCubit>();
    return Column(
      children: [
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
          text: AppString.forgotPassword,
          h: .012.sh,
          w: 0,
        ),
        CustomSectionTwoContainer(
          text: AppString.login,
          onPressed: () {
            // cubit.login();
            Navigator.pushNamed(context, Routes.home);
          },
        ),
        SizedBox(height: MediaQueryHelper.height(context, 0.02)),
        CustomSectionThreeContainer(
          text: AppString.signUp,
          ontap: () {
            // if (cubit.formKey.currentState!.validate()) {
            //   cubit.login();
            // }
            Navigator.pushNamed(context, Routes.register);
          },
        ),
        SizedBox(height: MediaQueryHelper.height(context, 0.04)),
        CustomDivider(text: AppString.orLogin),
        SizedBox(height: MediaQueryHelper.height(context, 0.04)),
        CustomSectionFourContainer(),
      ],
    );
  }
}
