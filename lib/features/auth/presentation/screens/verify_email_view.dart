import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/core/routing/routes.dart';
import 'package:hand_made/features/auth/presentation/bloc/verifiy/cubit/verifiy_email_cubit.dart';
import 'package:hand_made/features/auth/presentation/bloc/verifiy/cubit/verifiy_email_state.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_verify_email.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyEmailCubit, VerifyEmailState>(
      listener: (context, state) {
        if (state is VerifyEmailSuccess) {
          Navigator.pushReplacementNamed(context, Routes.home);
        }
        if (state is VerifyEmailNotVerified) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Please verify your email first.')),
          );
        }
        if (state is VerifyEmailResent) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Verification email sent successfully.'),
            ),
          );
        }
        if (state is VerifyEmailFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        final isChecking = state is VerifyEmailChecking;
        final isResending = state is VerifyEmailResending;
        return Scaffold(
          backgroundColor: CustomVerifyEmail.backgroundColor,
          body: SafeArea(
            child: Column(
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 28, 24, 35),
                  child: Column(
                    children: [
                      // Back button
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: CustomVerifyEmail.textColor,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Verify Email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomVerifyEmail.textColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'One more step to get started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: CustomVerifyEmail.secondaryTextColor,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                // Content
                CustomVerifyEmail(
                  email: email,
                  isChecking: isChecking,
                  isResending: isResending,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
