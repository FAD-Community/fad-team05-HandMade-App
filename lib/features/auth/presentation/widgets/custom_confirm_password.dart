import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_string.dart';
import 'package:hand_made/core/errors/validator/validotar.dart';
import 'package:hand_made/core/widgets/custom_text_field.dart';

class CustomConfirmPasswordField extends StatelessWidget {
  const CustomConfirmPasswordField({
    super.key,
    required this.passwordController,
    required this.isHidden,
    required this.onToggle,
  });

  final TextEditingController passwordController;
  final bool isHidden;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator: (value){
          return Validator.validateConfirmPassword(
    value,
    passwordController.text,
  );
      },
      myController: passwordController,
      hint: AppString.confirmPassword,
      label: AppString.confirmPassword,
      prefixIcon: Icons.lock_outline,
      obscureText: isHidden,
      suffixIcon: IconButton(
        onPressed: onToggle,
        icon: Icon(
          isHidden ? Icons.visibility_off : Icons.visibility,
        ),
      ),
    );
  }
}