import 'package:hand_made/features/search/data/models/search_history_model.dart';

abstract class LocalSearchDataSource {
  Future<List<SearchHistoryModel>> getSearches();

  Future<void> addSearch(SearchHistoryModel model);

  Future<void> removeSearch(String id);

  Future<void> clear();
}
