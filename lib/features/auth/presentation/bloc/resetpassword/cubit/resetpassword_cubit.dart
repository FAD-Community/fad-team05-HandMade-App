import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hand_made/core/util/password_visibility_mixin.dart';

part 'resetpassword_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState>
    with PasswordVisibilityMixin {
  ResetPasswordCubit() : super(ResetpasswordInitial());

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void changePasswordVisibility() {
    togglePasswordVisibility();
    emit(ResetPasswordVisibilityChanged());
  }

  void changeConfirmPasswordVisibility() {
    toggleConfirmPasswordVisibility();
    emit(ResetPasswordVisibilityChanged());
  }
}
