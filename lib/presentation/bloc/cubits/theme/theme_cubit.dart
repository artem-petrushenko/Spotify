import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/theme/abstract_theme_service.dart';

part 'theme_state.dart';

class ColorSchemeData {
  final String name;
  final int colorScheme;

  const ColorSchemeData({
    required this.name,
    required this.colorScheme,
  });
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(const ThemeState(
            indexCheck: 0, isDarkTheme: true, colorScheme: Colors.green)) {
    _getThemeData();
    _getColorScheme();
  }

  static const colorSchemes = <ColorSchemeData>[
    ColorSchemeData(name: 'Red', colorScheme: 0xFFF44336),
    ColorSchemeData(name: 'Pink', colorScheme: 0xFFE91E63),
    ColorSchemeData(name: 'Purple', colorScheme: 0xFF9C27B0),
    ColorSchemeData(name: 'Deep Purple', colorScheme: 0xFF673AB7),
    ColorSchemeData(name: 'Indigo', colorScheme: 0xFF3F51B5),
    ColorSchemeData(name: 'Blue', colorScheme: 0xFF2196F3),
    ColorSchemeData(name: 'Light Blue', colorScheme: 0xFF03A9F4),
    ColorSchemeData(name: 'Cyan', colorScheme: 0xFF00BCD4),
    ColorSchemeData(name: 'Teal', colorScheme: 0xFF009688),
    ColorSchemeData(name: 'Green', colorScheme: 0xFF4CAF50),
    ColorSchemeData(name: 'Light Green', colorScheme: 0xFF8BC34A),
    ColorSchemeData(name: 'Lime', colorScheme: 0xFFCDDC39),
    ColorSchemeData(name: 'Yellow', colorScheme: 0xFFFFEB3B),
    ColorSchemeData(name: 'Amber', colorScheme: 0xFFFFC107),
    ColorSchemeData(name: 'Orange', colorScheme: 0xFFFF9800),
    ColorSchemeData(name: 'Deep Orange', colorScheme: 0xFFFF5722),
    ColorSchemeData(name: 'Brown', colorScheme: 0xFF795548),
    ColorSchemeData(name: 'Grey', colorScheme: 0xFF9E9E9E),
    ColorSchemeData(name: 'Blue Grey', colorScheme: 0xFF607D8B),
  ];

  ThemeMode get getThemeMode =>
      state.isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  Future<void> _getThemeData() async {
    final isDarkTheme =
        await GetIt.instance<AbstractThemeService>().getThemeFromProvider();
    final newState = state.copyWith(isDarkTheme: isDarkTheme);
    emit(newState);
  }

  void setThemeData(bool value) {
    final isDarkTheme = value;
    GetIt.instance<AbstractThemeService>().setThemeToProvider(isDarkTheme);
    final newState = state.copyWith(isDarkTheme: isDarkTheme);
    emit(newState);
  }

  Future<void> _getColorScheme() async {
    final colorScheme = await GetIt.instance<AbstractThemeService>()
        .getThemeSchemeFromProvider()
        .then((value) => _setIndexColor(value))
        .then((value) => Color(value));
    final newState = state.copyWith(colorScheme: colorScheme);
    emit(newState);
  }

  int _setIndexColor(int value) {
    final indexCheck =
        colorSchemes.indexWhere((element) => element.colorScheme == value);
    final newState = state.copyWith(indexCheck: indexCheck);
    emit(newState);
    return value;
  }

  void setThemeScheme(int value) {
    _setColorScheme(value);
    final indexCheck = value;
    final newState = state.copyWith(indexCheck: indexCheck);
    emit(newState);
  }

  void _setColorScheme(int value) {
    final colorScheme = Color(colorSchemes[value].colorScheme);
    GetIt.instance<AbstractThemeService>()
        .setThemeSchemeToProvider(colorSchemes[value].colorScheme);
    final newState = state.copyWith(colorScheme: colorScheme);
    emit(newState);
  }
}
