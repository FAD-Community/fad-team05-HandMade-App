import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';

class SearchHistoryModel extends SearchHistoryEntity {
  SearchHistoryModel({required super.id, required super.title});
  factory SearchHistoryModel.fromEntity(SearchHistoryEntity entity) {
    return SearchHistoryModel(id: entity.id, title: entity.title);
  }
  factory SearchHistoryModel.fromJson(Map<String, dynamic> json) {
    return SearchHistoryModel(id: json["id"], title: json["title"]);
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title};
  }
}
