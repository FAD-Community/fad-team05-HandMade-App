abstract class OtpRemoteDataSource {
  Future<void> sendOtp(String email);

  Future<bool> verifyOtp({
  required String email,
  required String otp,
  });
}