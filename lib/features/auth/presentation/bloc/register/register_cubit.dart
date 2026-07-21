import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hand_made/core/util/password_visibility_mixin.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> with PasswordVisibilityMixin {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  RegisterCubit() : super(RegisterInitial());
  void changePasswordVisibility() {
    togglePasswordVisibility();
    emit(RegisterPasswordVisibilityChanged());
  }

  void changeConfirmPasswordVisibility() {
    toggleConfirmPasswordVisibility();
    emit(RegisterPasswordVisibilityChanged());
  }

  void register() {
    if (!formKey.currentState!.validate()) return;
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
