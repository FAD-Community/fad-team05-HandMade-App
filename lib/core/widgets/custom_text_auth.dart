import 'package:flutter/material.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppTextStyle.font12greypoppinssemiweight400);
  }
}
