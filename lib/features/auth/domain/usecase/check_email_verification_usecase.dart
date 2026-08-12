import 'package:dartz/dartz.dart';
import 'package:hand_made/core/errors/failure.dart';
import 'package:hand_made/features/auth/domain/repo/auth_repo.dart';

class CheckEmailVerificationUsecase {
  final AuthRepository repository;

  CheckEmailVerificationUsecase({
    required this.repository,
  });
  Future<Either<Failure, bool>> call() async {
    return await repository.isEmailVerified();
  }
}