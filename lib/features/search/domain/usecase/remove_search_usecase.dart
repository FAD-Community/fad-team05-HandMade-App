import 'package:hand_made/features/search/domain/repo/search_repository.dart';

class RemoveSearchUsecase {
  final SearchRepository repository;

  RemoveSearchUsecase({required this.repository});

  Future<void> call(String id) {
    return repository.removeSearch(id);
  }
}
