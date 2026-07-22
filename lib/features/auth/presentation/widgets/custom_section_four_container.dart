import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hand_made/core/constants/app_colors.dart' show AppColors;

import 'package:hand_made/core/constants/assets.dart';
import 'package:hand_made/core/spacing/media_query_helper.dart';
import 'package:hand_made/features/auth/presentation/widgets/cutom_button_login_sign_in.dart';
import 'package:hand_made/generated/l10n.dart';

class CustomSectionFourContainer extends StatelessWidget {
  const CustomSectionFourContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CutomButtonLoginSignIn(
              text: s.facebook,
              onPressed: () {},
              icon: FaIcon(
                color: AppColors.facebookBlue,
                FontAwesomeIcons.facebook,
                size: 20.sp,
              ),
            ),
            SizedBox(width: MediaQueryHelper.width(context, 0.05)),
            CutomButtonLoginSignIn(
              text: s.google,
              onPressed: () {},
              icon: Image.asset(
                Assets.imagesSearch,
                width: 20.w,
                height: 20.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
