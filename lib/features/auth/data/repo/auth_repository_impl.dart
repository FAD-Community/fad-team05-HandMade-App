import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hand_made/core/errors/failure.dart';
import 'package:hand_made/features/auth/domain/entities/user_entity.dart';
import 'package:hand_made/features/auth/domain/repo/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepositoryImpl({required this.firebaseAuth});

  @override
  Future<Either<Failure, UserEntity>> register({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user!;
      return Right(UserEntity(id: user.uid, email: user.email!));
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message ?? 'Registration failed'));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user!;

      return Right(UserEntity(id: user.uid, email: user.email!));
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message ?? 'Login failed'));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await firebaseAuth.signOut();

      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message ?? 'Logout failed'));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> forgetPassword({required String email}) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);

      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message ?? 'Password reset failed'));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> sendEmailVerification() async {
    try {
      final user = firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure(message: 'No user is currently signed in'));
      }
      await user.sendEmailVerification();
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(
        Failure(message: e.message ?? 'Failed to send verification email'),
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isEmailVerified() async {
    try {
      final user = firebaseAuth.currentUser;
      if (user == null) {
        return Left(Failure(message: 'No user is currently signed in'));
      }
      await user.reload();
      final updatedUser = firebaseAuth.currentUser;
      return Right(updatedUser?.emailVerified ?? false);
    } on FirebaseAuthException catch (e) {
      return Left(
        Failure(message: e.message ?? 'Failed to check email verification'),
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
