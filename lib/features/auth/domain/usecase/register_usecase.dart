
// import 'package:dartz/dartz.dart';
// import 'package:hand_made/core/errors/failure.dart';
// import '../entities/user_entity.dart';
// import '../repositories/auth_repository.dart';

// class RegisterUsecase {
//   final AuthRepository repository;

//   RegisterUsecase({required this.repository});

//   Future<Either<Failure, UserEntity>> call({
//     required String name,
//     required String email,
//     required String password,
//   }) async {
//     return await repository.register(
//       name: name,
//       email: email,
//       password: password,
//     );
//   }
// }