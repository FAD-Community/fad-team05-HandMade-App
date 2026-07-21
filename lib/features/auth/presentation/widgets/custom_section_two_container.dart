import 'package:flutter/material.dart';

import 'package:hand_made/core/spacing/media_query_helper.dart';

import 'package:hand_made/core/widgets/custom_button.dart';

class CustomSectionTwoContainer extends StatelessWidget {
  const CustomSectionTwoContainer({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQueryHelper.height(context, 0.04)),
        CustomButton(text: text, onPressed: onPressed),
      ],
    );
  }
}
