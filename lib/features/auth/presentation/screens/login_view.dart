import 'package:flutter/material.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:CustomLoginBody());
  }
}
