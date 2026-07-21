import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/errors/validator/validotar.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/custom_text_field.dart';

class CustomSectionOneContainer extends StatelessWidget {
  const CustomSectionOneContainer({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.isPasswordHidden,
    required this.onTogglePassword,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isPasswordHidden;
  final VoidCallback onTogglePassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          validator: Validator.validateEmail,
          myController: emailController,
          hint: AppString.usernameOrEmail,
          label: AppString.emailAddress,
          prefixIcon: Icons.person_2_outlined,
          obscureText: false,
        ),
        SizedBox(height: MediaQueryHelper.height(context, 0.034)),
        CustomTextField(
          validator: Validator.validatePassword,
          myController: passwordController,
          hint: AppString.password,
          label: AppString.password,
          prefixIcon: Icons.lock,
          obscureText: isPasswordHidden,
          suffixIcon: IconButton(
            onPressed: onTogglePassword,
            icon: Icon(
              isPasswordHidden ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
      ],
    );
  }
}
