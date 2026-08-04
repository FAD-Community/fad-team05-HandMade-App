class Validator {
  static String? validatePassword(
    String? value,
    String requiredMessage,
    String lengthMessage,
  ) {
    if (value == null || value.isEmpty) {
      return requiredMessage;
    }

    if (value.length < 8) {
      return lengthMessage;
    }

    return null;
  }

  static String? validateConfirmPassword(
    String? value,
    String password,
    String requiredMessage,
    String matchMessage,
  ) {
    if (value == null || value.isEmpty) {
      return requiredMessage;
    }

    if (value != password) {
      return matchMessage;
    }

    return null;
  }

  static String? validateEmail(
    String? value,
    String requiredMessage,
    String invalidMessage,
  ) {
    if (value == null || value.trim().isEmpty) {
      return requiredMessage;
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return invalidMessage;
    }

    return null;
  }
}
