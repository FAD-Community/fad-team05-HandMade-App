import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hand_made/core/util/password_visibility_mixin.dart';
import 'package:hand_made/features/auth/domain/usecase/register_usecase.dart';
import 'package:hand_made/features/auth/domain/usecase/send_email_verification.dart';
import 'package:hand_made/features/auth/presentation/bloc/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> with PasswordVisibilityMixin {
  // =========================
  // UseCases
  // =========================

  final RegisterUsecase registerUsecase;
  final SendEmailVerificationUsecase sendEmailVerificationUsecase;

  // =========================
  // Form
  // =========================
  final formKey = GlobalKey<FormState>();
  // =========================
  // Controllers
  // =========================
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  RegisterCubit({
    required this.registerUsecase,
    required this.sendEmailVerificationUsecase,
  }) : super(RegisterInitial());

  // =========================
  // Password Visibility
  // =========================
  void changePasswordVisibility() {
    togglePasswordVisibility();
    emit(RegisterPasswordVisibilityChanged());
  }
  void changeConfirmPasswordVisibility() {
    toggleConfirmPasswordVisibility();
    emit(RegisterPasswordVisibilityChanged());
  }
  // =========================
  // Register
  // =========================
  Future<void> register() async {
    // Validate Email + Password + Confirm Password
    if (!formKey.currentState!.validate()) {
      return;
    }
    // Loading
    emit(RegisterLoading());
    // Create Account
    final result = await registerUsecase(
      email: emailController.text.trim(),
      password: passwordController.text,
    );
    await result.fold(
      // Register Failed
      (failure) async {
        emit(RegisterFailure(failure.message));
      },
      // Register Success
      (user) async {
        // Send Verification Email
        final verificationResult = await sendEmailVerificationUsecase();
        verificationResult.fold(
          // Verification Email Failed
          (failure) {
            emit(RegisterFailure(failure.message));
          },
          // Verification Email Sent
          (_) {
            emit(RegisterSuccess(user));
          },
        );
      },
    );
  }
  // =========================
  // Dispose
  // =========================
  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
