part of 'resetpassword_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetpasswordInitial extends ResetPasswordState {}
final class ResetPasswordVisibilityChanged extends ResetPasswordState {}
