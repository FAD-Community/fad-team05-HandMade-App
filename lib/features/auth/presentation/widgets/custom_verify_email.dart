import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/features/auth/presentation/bloc/verifiy/cubit/verifiy_email_cubit.dart';

class CustomVerifyEmail extends StatelessWidget {
  const CustomVerifyEmail({
    super.key,
    required this.email,
    required this.isChecking,
    required this.isResending,
  });

  final String? email;
  final bool isChecking;
  final bool isResending;

  static const Color primaryColor = Color(0xFFAD6036);
  static const Color backgroundColor = Color(0xFFFAF8F7);
  static const Color textColor = Color(0xFF3F3936);
  static const Color secondaryTextColor = Color(0xFF77716E);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 30),
          child: Column(
            children: [
              // Drag indicator
              Container(
                width: 42,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 35),
              // Email icon
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(.10),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.mark_email_unread_rounded,
                    size: 50,
                    color: primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Check your email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'We sent a verification link to your email address. '
                'Please check your inbox and verify your account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: secondaryTextColor,
                ),
              ),
             // Email
              const SizedBox(height: 28),
              // Verify button
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: isChecking
                      ? null
                      : () {
                          context.read<VerifyEmailCubit>().checkVerification();
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    disabledBackgroundColor: primaryColor.withOpacity(.55),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: isChecking
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.3,
                            color: Colors.white,
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.verified_outlined, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'I Verified My Email',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 18),
              // Resend
              TextButton(
                onPressed: isResending
                    ? null
                    : () {
                        context.read<VerifyEmailCubit>().resendEmail();
                      },
                child: isResending
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: primaryColor,
                        ),
                      )
                    : const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.refresh_rounded,
                            size: 18,
                            color: primaryColor,
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Did not receive the email? Resend',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Check your spam or junk folder if you can not find it.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 22),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back to Login',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
