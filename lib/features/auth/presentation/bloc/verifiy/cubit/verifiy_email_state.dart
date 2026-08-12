sealed class VerifyEmailState {}

final class VerifyEmailInitial extends VerifyEmailState {}

final class VerifyEmailChecking extends VerifyEmailState {}

final class VerifyEmailSuccess extends VerifyEmailState {}

final class VerifyEmailNotVerified extends VerifyEmailState {}

final class VerifyEmailFailure extends VerifyEmailState {
  final String message;

  VerifyEmailFailure(this.message);
}

final class VerifyEmailResending extends VerifyEmailState {}

final class VerifyEmailResent extends VerifyEmailState {}