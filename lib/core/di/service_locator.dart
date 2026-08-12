import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hand_made/features/auth/data/repo/auth_repository_impl.dart';
import 'package:hand_made/features/auth/domain/repo/auth_repo.dart';
import 'package:hand_made/features/auth/domain/usecase/check_email_verification_usecase.dart';
import 'package:hand_made/features/auth/domain/usecase/register_usecase.dart';
import 'package:hand_made/features/auth/domain/usecase/send_email_verification.dart';
import 'package:hand_made/features/auth/presentation/bloc/verifiy/cubit/verifiy_email_cubit.dart';

// Search
import 'package:hand_made/features/search/data/repo/repo_history_imp.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source_iml.dart';
import 'package:hand_made/features/search/domain/repo/search_repository.dart';
import 'package:hand_made/features/search/domain/usecase/add_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/clear_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/get_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/remove_search_usecase.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';

// Auth
import 'package:hand_made/features/auth/presentation/bloc/register/register_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // =========================
  // Search
  // =========================

  // Data Source
  getIt.registerLazySingleton<LocalSearchDataSource>(
    () => SearchLocalDataSourceImpl(),
  );

  // Repository
  getIt.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(getIt<LocalSearchDataSource>()),
  );

  // UseCases
  getIt.registerLazySingleton<GetSearchUsecase>(
    () => GetSearchUsecase(repository: getIt<SearchRepository>()),
  );

  getIt.registerLazySingleton<AddSearchUsecase>(
    () => AddSearchUsecase(repository: getIt<SearchRepository>()),
  );

  getIt.registerLazySingleton<RemoveSearchUsecase>(
    () => RemoveSearchUsecase(repository: getIt<SearchRepository>()),
  );

  getIt.registerLazySingleton<ClearSearchUsecase>(
    () => ClearSearchUsecase(getIt<SearchRepository>()),
  );

  // Cubit
  getIt.registerFactory<SearchCubit>(
    () => SearchCubit(
      getSearch: getIt<GetSearchUsecase>(),
      addSearch: getIt<AddSearchUsecase>(),
      removeSearch: getIt<RemoveSearchUsecase>(),
      clearSearches: getIt<ClearSearchUsecase>(),
    ),
  );

  // =========================
  // Auth
  // =========================

  // =========================
  // Firebase
  // =========================

  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // =========================
  // Repository
  // =========================

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(firebaseAuth: getIt<FirebaseAuth>()),
  );

  // =========================
  // UseCases
  // =========================

  getIt.registerLazySingleton<RegisterUsecase>(
    () => RegisterUsecase(repository: getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<SendEmailVerificationUsecase>(
    () => SendEmailVerificationUsecase(repository: getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<CheckEmailVerificationUsecase>(
    () => CheckEmailVerificationUsecase(repository: getIt<AuthRepository>()),
  );
  // =========================
  // Cubit
  // =========================

  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(
      registerUsecase: getIt<RegisterUsecase>(),
      sendEmailVerificationUsecase: getIt<SendEmailVerificationUsecase>(),
    ),
  );

  // Verify Email Cubit
  getIt.registerFactory<VerifyEmailCubit>(
    () => VerifyEmailCubit(
      checkEmailVerificationUsecase: getIt<CheckEmailVerificationUsecase>(),
      sendEmailVerificationUsecase: getIt<SendEmailVerificationUsecase>(),
    ),
  );
}
