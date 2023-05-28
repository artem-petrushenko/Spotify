part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  final int indexCheck;
  final bool isDarkTheme;
  final Color colorScheme;

  const ThemeState({
    required this.indexCheck,
    required this.isDarkTheme,
    required this.colorScheme,
  });

  ThemeState copyWith({
    int? indexCheck,
    bool? isDarkTheme,
    Color? colorScheme,
  }) {
    return ThemeState(
      indexCheck: indexCheck ?? this.indexCheck,
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
      colorScheme: colorScheme ?? this.colorScheme,
    );
  }

  @override
  List<Object?> get props => [indexCheck, isDarkTheme, colorScheme];
}
