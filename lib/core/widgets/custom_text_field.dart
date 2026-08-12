import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hand_made/core/constants/app_colors.dart';
import 'package:hand_made/core/constants/app_text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.prefixIcon,
    required this.hint,
    this.suffixIcon,
    required this.obscureText,
    required this.myController,
    this.validator,
  });
  final TextEditingController myController;
  final bool obscureText;
  final String label;
  final IconData? prefixIcon;
  final String hint;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: myController,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.grey.withValues(alpha: .7),
            width: .5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: AppColors.primary, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
        errorStyle: AppTextStyle.font14primarypoppins.copyWith(
          color: Colors.red,
        ),
        labelText: label,
        labelStyle: AppTextStyle.font16blackpoppinssemiw500.copyWith(
          color: AppColors.grey,
          fontWeight: FontWeight.w300,
        ),
        floatingLabelStyle: AppTextStyle.font16blackpoppinssemiw500.copyWith(
          color: AppColors.primary,
        ),
        hintText: hint,
        hintStyle: AppTextStyle.font14primarypoppins.copyWith(
          color: AppColors.grey,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.grey.withValues(alpha: .6))
            : null,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.grey.withValues(alpha: .5),
      ),
    );
  }
}
