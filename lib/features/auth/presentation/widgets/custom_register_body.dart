import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_background_container.dart'
    show CustomBackgroundContainer;
import 'package:hand_made/features/auth/presentation/widgets/custom_container_forground.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_register_column.dart';

class CustomRegisterBody extends StatelessWidget {
  const CustomRegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            CustomBackgroundContainer(
              onTap: () {
                Navigator.pop(context);
              },
              text: AppString.createAccount,
              showBackButton: true,
            ),
            CustomContainerForground(child: CustomRegisterColumn()),
          ],
        ),
      ),
    );
  }
}
