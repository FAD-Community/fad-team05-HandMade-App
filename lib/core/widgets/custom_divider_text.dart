import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class CustomDividerText extends StatelessWidget {
  const CustomDividerText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Text(text, style: AppTextStyle.font14primarypoppins),
      ),
    );
  }
}
