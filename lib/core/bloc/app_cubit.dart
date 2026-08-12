import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_made/config/cache/cache_helper.dart';

class AppState {
  final Locale locale;
  final ThemeMode themeMode;
  AppState({required this.locale, required this.themeMode});
  AppState copyWith({Locale? locale, ThemeMode? themeMode}) {
    return AppState(
      locale: locale ?? this.locale,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}

class CacheKeys {
  static const language = 'language_code';
  static const theme = 'is_dark_mode';
}

class AppCubit extends Cubit<AppState> {
  AppCubit()
    : super(AppState(locale: const Locale('en'), themeMode: ThemeMode.light)) {
    _loadSettings();
  }
  void _loadSettings() {
    final String languageCode = CacheHelper.getData(CacheKeys.language) ?? 'en';
    final bool isDarkMode = CacheHelper.getData(CacheKeys.theme) ?? false;
    emit(
      AppState(
        locale: Locale(languageCode),
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }

  Future<void> changeLanguage(String languageCode) async {
    await CacheHelper.saveData(key: CacheKeys.language, value: languageCode);
    emit(state.copyWith(locale: Locale(languageCode)));
  }

  Future<void> toggleTheme(bool isDark) async {
    await CacheHelper.saveData(key: CacheKeys.theme, value: isDark);
    emit(state.copyWith(themeMode: isDark ? ThemeMode.dark : ThemeMode.light));
  }
}
