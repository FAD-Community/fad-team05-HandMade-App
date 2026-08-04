import 'package:get_it/get_it.dart';
import 'package:hand_made/features/search/data/repo/repo_history_imp.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source_iml.dart';
import 'package:hand_made/features/search/domain/repo/search_repository.dart';
import 'package:hand_made/features/search/domain/usecase/add_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/clear_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/get_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/remove_search_usecase.dart';
import 'package:hand_made/features/search/presentation/cubit/search_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
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
}
