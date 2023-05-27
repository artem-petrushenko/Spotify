part of 'localization_cubit.dart';

enum LocalizationLanguages {
  english,
  russian,
  ukrainian,
  chinese,
  belarusian,
  czech,
  polish,
  swedish,
  serbian,
  italian,
  indonesian,
  hungarian,
  german,
}

class LocalizationState extends Equatable {
  final LocalizationLanguages localization;

  @override
  List<Object?> get props => [localization];

  const LocalizationState({
    required this.localization,
  });

  LocalizationState copyWith({
    LocalizationLanguages? localization,
  }) {
    return LocalizationState(
      localization: localization ?? this.localization,
    );
  }
}
