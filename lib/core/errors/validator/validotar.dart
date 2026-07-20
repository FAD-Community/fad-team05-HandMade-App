class Validator {

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }

    return null;
  }


  static String? validateConfirmPassword(
    String? value,
    String password,
  ) {
    if (value == null || value.isEmpty) {
      return "Confirm password is required";
    }

    if (value != password) {
      return "Passwords do not match";
    }

    return null;
  }


  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    if (!RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    ).hasMatch(value)) {
      return "Enter valid email";
    }

    return null;
  }
}