import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hand_made/core/util/password_visibility_mixin.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> with PasswordVisibilityMixin {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginCubit() : super(LoginInitial());

  void changePasswordVisibility() {
    togglePasswordVisibility(); 
    emit(LoginPasswordVisibilityChanged());
  }

  void login() {
  if (!formKey.currentState!.validate()) return;
  // Call API
}
}
