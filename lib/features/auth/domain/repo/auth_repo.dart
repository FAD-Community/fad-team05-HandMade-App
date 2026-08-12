// // domain/repositories/auth_repository.dart
import 'package:dartz/dartz.dart';
import 'package:hand_made/core/errors/failure.dart';
import 'package:hand_made/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> register({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, void>> forgetPassword({required String email});
  Future<Either<Failure, void>> sendEmailVerification();
  Future<Either<Failure, bool>> isEmailVerified();
}
