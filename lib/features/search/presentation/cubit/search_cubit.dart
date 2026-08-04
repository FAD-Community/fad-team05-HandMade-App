import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/features/search/domain/entities/search_entites_history.dart';
import 'package:hand_made/features/search/domain/usecase/add_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/clear_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/get_search_usecase.dart';
import 'package:hand_made/features/search/domain/usecase/remove_search_usecase.dart';
import 'package:hand_made/features/search/presentation/cubit/search_state.dart';
import 'package:uuid/uuid.dart';

class SearchCubit extends Cubit<SearchState> {
  final GetSearchUsecase getSearch;
  final AddSearchUsecase addSearch;
  final RemoveSearchUsecase removeSearch;
  final ClearSearchUsecase clearSearches;
  final TextEditingController searchController = TextEditingController();
  SearchCubit({
    required this.getSearch,
    required this.addSearch,
    required this.removeSearch,
    required this.clearSearches,
  }) : super(SearchState());

  Future<void> submitSearch() async {
    final text = searchController.text.trim();
    if (text.isEmpty) return;
    await addNewSearch(SearchHistoryEntity(id: const Uuid().v4(), title: text));
    searchController.clear();
  }

  Future<void> loadSearches() async {
    emit(state.copyWith(status: SearchStatus.loading));
    try {
      final result = await getSearch();
      emit(state.copyWith(status: SearchStatus.success, searches: result));
    } catch (e) {
      emit(
        state.copyWith(
          status: SearchStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> addNewSearch(SearchHistoryEntity search) async {
    await addSearch(search);
    await loadSearches();
  }

  Future<void> deleteSearch(String id) async {
    await removeSearch(id);
    await loadSearches();
  }

  Future<void> clearAllSearches() async {
    await clearSearches();
    emit(state.copyWith(searches: []));
  }
}
