import 'dart:convert';

import 'package:hand_made/config/cache/cache_helper.dart';
import 'package:hand_made/config/cache/cache_key.dart';
import 'package:hand_made/features/search/data/models/search_history_model.dart';
import 'package:hand_made/features/search/data/services/local_search_data_source.dart';

class SearchLocalDataSourceImpl implements LocalSearchDataSource {
  SearchLocalDataSourceImpl();

  @override
  Future<void> addSearch(SearchHistoryModel model) async {
    final searches = await getSearches();
    searches.removeWhere((e) => e.title == model.title);
    searches.insert(0, model);
    if (searches.length > 10) {
      searches.removeLast();
    }
    final jsonList = searches.map((e) => e.toJson()).toList();
    await CacheHelper.saveData(
      key: CacheKey.recentSearches,
      value: jsonEncode(jsonList),
    );
  }

  @override
  Future<void> clear() async {
    await CacheHelper.clearData(key: CacheKey.recentSearches);
  }

  @override
  Future<List<SearchHistoryModel>> getSearches() async {
    final data =  CacheHelper.getData(CacheKey.recentSearches);
    if (data == null) {
      return [];
    }
    final List decoded = jsonDecode(data);
    return decoded.map((e) => SearchHistoryModel.fromJson(e)).toList();
  }

  @override
  Future<void> removeSearch(String id) async {
    final searches = await getSearches();
    searches.removeWhere((e) => e.id == id);
    final jsonList = searches.map((e) => e.toJson()).toList();
    await CacheHelper.saveData(
      key: CacheKey.recentSearches,
      value: jsonEncode(jsonList),
    );
  }
}
