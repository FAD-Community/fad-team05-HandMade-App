import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/features/otp/presentation/cubit/cubit/otp_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class CustomOtpField extends StatelessWidget {
  const CustomOtpField({
    super.key,
    required this.controller,
    this.onCompleted,
  });

  final TextEditingController controller;
  final Function(String)? onCompleted;


  @override
  Widget build(BuildContext context) {

    return BlocBuilder<OtpCubit, OtpState>(
      builder: (context, state) {
        final pinTheme = PinTheme(
          width: 55.w,
          height: 55.h,
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffF3E9E3),
            borderRadius: BorderRadius.circular(10),
          ),
        );
        return Pinput(
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          defaultPinTheme: pinTheme,
          focusedPinTheme: pinTheme.copyDecorationWith(
            color: AppColors.warmCream,
            border: Border.all(
              color: AppColors.primary,
              width: 2,
            ),
          ),
          submittedPinTheme: pinTheme.copyDecorationWith(
            color: AppColors.warmCream,
          ),
          errorPinTheme: pinTheme.copyDecorationWith(
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
          ),
          followingPinTheme: state.inputStatus ==
                  OtpInputStatus.disabled
              ? pinTheme.copyDecorationWith(
                  color: Colors.grey.shade300,
                )
              : pinTheme,
          separatorBuilder: (index) {
            return SizedBox(
              width: 16.w,
            );
          },
          cursor: Container(
            width: 2.w,
            height: 22.h,
            color: Colors.black,
          ),
          onCompleted: onCompleted,
        );
      },
    );
  }
}