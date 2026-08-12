import 'package:flutter/material.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomRegisterBody());
  }
}
