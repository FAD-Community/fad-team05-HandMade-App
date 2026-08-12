import 'package:hand_made/features/otp/domain/repo/repo_interface.dart';

class SendOtpUsecase {
  final OtpRepoInterface otpRepoInterface;
  SendOtpUsecase(this.otpRepoInterface);
  Future<void> call(String email) {
    return otpRepoInterface.sendOtp(email);
  }
}
