import 'package:flutter/material.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/core/widgets/coustom_button_primary.dart';
import 'package:hand_made/core/widgets/custom_text_auth.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomSectionThreeContainer extends StatelessWidget {
  const CustomSectionThreeContainer({super.key, required this.text, required this.ontap});
 final VoidCallback ontap; 
final String text;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextAuth(text: s.createAccount),
        SizedBox(width: MediaQueryHelper.width(context, .01)),
        CoustomButtonPrimary(
          ontap: ontap,
          text: text,
          h: 0,
          w: 0,
        ),
      ],
    );
  }
}
