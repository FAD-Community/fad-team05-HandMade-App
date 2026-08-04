

import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';
import 'package:hand_made/features/search/domain/repo/search_repository.dart';

class AddSearchUsecase {
    final SearchRepository repository;

  AddSearchUsecase({required this.repository});

  Future<void> call(SearchHistoryEntity search){
   return repository.addSearch(search);
  }
}