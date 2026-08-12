// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_background_container.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_container_forground.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_login_column.dart';
import 'package:hand_made/l10n/app_localizations.dart';

class CustomLoginBody extends StatelessWidget {
  const CustomLoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            CustomBackgroundContainer(
              text: AppLocalizations.of(context)!.welcomeBack,
            ),
            CustomContainerForground(child: CustomLoginColumn()),
          ],
        ),
      ),
    );
  }
}
