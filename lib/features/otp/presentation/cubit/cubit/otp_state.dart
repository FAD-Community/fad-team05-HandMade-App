part of 'otp_cubit.dart';

enum OtpInputStatus { initial, focused, error, success, disabled }

class OtpState {
  final OtpInputStatus inputStatus;
  final String? errorMessage;

  const OtpState({
    this.inputStatus = OtpInputStatus.initial,
    this.errorMessage,
  });

  OtpState copyWith({OtpInputStatus? inputStatus, String? errorMessage}) {
    return OtpState(
      inputStatus: inputStatus ?? this.inputStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
