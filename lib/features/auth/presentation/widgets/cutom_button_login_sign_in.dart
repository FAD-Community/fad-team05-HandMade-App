import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';

class CutomButtonLoginSignIn extends StatelessWidget {
  const CutomButtonLoginSignIn({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });
  final String text;
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQueryHelper.height(context, .06),
      width: MediaQueryHelper.width(context, 0.44),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.grey.withValues(alpha: .5), width: 1),
      ),
      child: MaterialButton(
        textColor: AppColors.deepPurple,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(width: MediaQueryHelper.width(context, 0.02)),
            Text(
              text,
              style: AppTextStyle.font14deepPurplepoppinssemiweight400,
            ),
          ],
        ),
      ),
    );
  }
}
