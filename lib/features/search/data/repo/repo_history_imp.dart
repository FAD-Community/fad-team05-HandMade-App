import 'package:hand_made/features/search/data/models/search_history_model.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source.dart';
import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';
import 'package:hand_made/features/search/domain/repo/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final LocalSearchDataSource localSearchDataSource;

  SearchRepositoryImpl(this.localSearchDataSource);

  @override
  Future<void> addSearch(SearchHistoryEntity search) async {
    return await localSearchDataSource.addSearch(
      SearchHistoryModel.fromEntity(search),
    );
  }

  @override
  Future<void> clearAll() async {
    return await localSearchDataSource.clear();
  }

  @override
  Future<List<SearchHistoryEntity>> getRecentSearches() async {
    return await localSearchDataSource.getSearches();
  }

  @override
  Future<void> removeSearch(String id) async {
    return await localSearchDataSource.removeSearch(id);
  }
}
