import 'package:dartz/dartz.dart';
import 'package:hand_made/core/errors/failure.dart';
import 'package:hand_made/features/auth/domain/entities/user_entity.dart';
import 'package:hand_made/features/auth/domain/repo/auth_repo.dart';

class RegisterUsecase {
  final AuthRepository repository;

  RegisterUsecase({required this.repository});

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) async {
    return await repository.register(email: email, password: password);
  }
}
