import 'package:dartz/dartz.dart';
import 'package:hand_made/core/errors/failure.dart';
import 'package:hand_made/features/auth/domain/repo/auth_repo.dart';

class SendEmailVerificationUsecase {
  final AuthRepository repository;

  SendEmailVerificationUsecase({
    required this.repository,
  });

  Future<Either<Failure, void>> call() async {
    return await repository.sendEmailVerification();
  }
}