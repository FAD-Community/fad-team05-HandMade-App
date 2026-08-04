import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';
import 'package:hand_made/features/search/domain/repo/search_repository.dart';

class GetSearchUsecase {
  final SearchRepository repository;

  GetSearchUsecase({required this.repository});

  Future<List<SearchHistoryEntity>> call() {
    return repository.getRecentSearches();
  }
}
