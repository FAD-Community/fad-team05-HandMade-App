import 'package:flutter/material.dart';

class CustumTextOnboarding extends StatelessWidget {
  const CustumTextOnboarding({
    super.key,
    required this.text,
    required this.style,
    this.isUnderlined = false,
  });

  final String text;
  final TextStyle style;
  final bool isUnderlined;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style.copyWith(
        decoration: isUnderlined
            ? TextDecoration.underline
            : TextDecoration.none,
      ),
    );
  }
}