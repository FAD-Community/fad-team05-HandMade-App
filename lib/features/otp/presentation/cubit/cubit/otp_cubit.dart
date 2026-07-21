import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState());

  final TextEditingController otpController = TextEditingController();
  final FocusNode otpFocusNode = FocusNode();

  void otpChanged(String value) {
    if (value.length == 4) {
      emit(state.copyWith(inputStatus: OtpInputStatus.success));
    } else {
      emit(state.copyWith(inputStatus: OtpInputStatus.initial));
    }
  }

  void otpFocus() {
    emit(state.copyWith(inputStatus: OtpInputStatus.focused));
  }

  void otpError(String message) {
    emit(
      state.copyWith(inputStatus: OtpInputStatus.error, errorMessage: message),
    );
  }

  void clearOtp() {
    otpController.clear();
    emit(state.copyWith(inputStatus: OtpInputStatus.initial));
  }

  @override
  Future<void> close() {
    otpController.dispose();
    otpFocusNode.dispose();
    return super.close();
  }
}
