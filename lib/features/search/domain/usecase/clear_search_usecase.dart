import 'package:hand_made/features/search/domain/repo/search_repository.dart';

class ClearSearchUsecase {
  final SearchRepository repository;

  ClearSearchUsecase(this.repository);

  Future<void> call() {
    return repository.clearAll();
  }
}
