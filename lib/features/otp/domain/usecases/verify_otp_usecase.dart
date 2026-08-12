import 'package:hand_made/features/otp/domain/repo/repo_interface.dart';

class VerifyOtpUsecase {
  final OtpRepoInterface otpRepoInterface;

  VerifyOtpUsecase(this.otpRepoInterface);

  Future<bool> call({required String email, required String otp}) {
  return otpRepoInterface.verifyOtp(email: email, otp: otp);
  }
}
