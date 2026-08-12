mixin PasswordVisibilityMixin {
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  void togglePasswordVisibility() {
    isPasswordHidden = !isPasswordHidden;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordHidden = !isConfirmPasswordHidden;
  }
}