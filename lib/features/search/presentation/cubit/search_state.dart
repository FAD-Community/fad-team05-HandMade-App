import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';

enum SearchStatus { initial, loading, success, failure }

class SearchState {
  final SearchStatus status;
  final List<SearchHistoryEntity> searches;
  final String? errorMessage;

  SearchState({
    this.status = SearchStatus.initial,
    this.searches = const [],
    this.errorMessage,
  });

  SearchState copyWith({
    SearchStatus? status,
    List<SearchHistoryEntity>? searches,
    String? errorMessage,
  }) {
    return SearchState(
      status: status ?? this.status,
      searches: searches ?? this.searches,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
