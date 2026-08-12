import 'package:bloc/bloc.dart';
import 'package:hand_made/features/auth/domain/usecase/check_email_verification_usecase.dart';
import 'package:hand_made/features/auth/domain/usecase/send_email_verification.dart';
import 'package:hand_made/features/auth/presentation/bloc/verifiy/cubit/verifiy_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  final CheckEmailVerificationUsecase checkEmailVerificationUsecase;
  final SendEmailVerificationUsecase sendEmailVerificationUsecase;

  VerifyEmailCubit({
    required this.checkEmailVerificationUsecase,
    required this.sendEmailVerificationUsecase,
  }) : super(VerifyEmailInitial());

  Future<void> checkVerification() async {
    emit(VerifyEmailChecking());
    final result = await checkEmailVerificationUsecase();
    result.fold(
      (failure) {
        emit(VerifyEmailFailure(failure.message));
      },
      (isVerified) {
        if (isVerified) {
          emit(VerifyEmailSuccess());
        } else {
          emit(VerifyEmailNotVerified());
        }
      },
    );
  }

  Future<void> resendEmail() async {
    emit(VerifyEmailResending());
    final result = await sendEmailVerificationUsecase();
    result.fold(
      (failure) {
        emit(VerifyEmailFailure(failure.message));
      },
      (_) {
        emit(VerifyEmailResent());
      },
    );
  }
}