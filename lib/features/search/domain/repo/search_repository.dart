import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';

abstract class SearchRepository {

  Future<List<SearchHistoryEntity>> getRecentSearches();

  Future<void> addSearch(SearchHistoryEntity search);

  Future<void> removeSearch(String id);

  Future<void> clearAll();

}