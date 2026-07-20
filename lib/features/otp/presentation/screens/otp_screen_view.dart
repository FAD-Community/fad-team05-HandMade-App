import 'package:flutter/material.dart';
import 'package:hand_made/features/otp/presentation/widgets/custom_otp_body.dart';

class OtpScreenView extends StatelessWidget {
  const OtpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomOtpBody(),
      )),
    );
  }
}