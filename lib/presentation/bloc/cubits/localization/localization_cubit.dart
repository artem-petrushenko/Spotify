import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/localization/abstract_localization_service.dart';

part 'localization_state.dart';

class LocalizationModel {
  final String englishName;
  final String name;
  final LocalizationLanguages localizationLanguages;

  const LocalizationModel({
    required this.englishName,
    required this.name,
    required this.localizationLanguages,
  });

  LocalizationModel copyWith({
    String? englishName,
    String? name,
    LocalizationLanguages? localizationLanguages,
  }) {
    return LocalizationModel(
      englishName: englishName ?? this.englishName,
      name: name ?? this.name,
      localizationLanguages:
          localizationLanguages ?? this.localizationLanguages,
    );
  }
}

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit()
      : super(const LocalizationState(
            localization: LocalizationLanguages.english)) {
    _getLocalization();
  }

  String get localizationUnicode =>
      _localizationLanguagesToString(state.localization);

  Future<void> _getLocalization() async {
    final localization = _stringToLocalizationLanguages(
        await GetIt.instance<AbstractLocalizationService>()
            .getLocalizationFromProvider());
    final newState = state.copyWith(localization: localization);
    emit(newState);
  }

  void setLocalizationData(LocalizationLanguages value) {
    final localization = value;
    GetIt.instance<AbstractLocalizationService>().setLocalizationToProvider(
        _localizationLanguagesToString(localization));
    final newState = state.copyWith(localization: localization);
    emit(newState);
  }

  String _localizationLanguagesToString(
      LocalizationLanguages localizationLanguages) {
    switch (localizationLanguages) {
      case LocalizationLanguages.russian:
        return 'ru';
      case LocalizationLanguages.english:
        return 'en';
      default:
        return 'en';
    }
  }

  LocalizationLanguages _stringToLocalizationLanguages(
      String localizationUnicode) {
    switch (localizationUnicode) {
      case 'ru':
        return LocalizationLanguages.russian;
      case 'en':
        return LocalizationLanguages.english;
      default:
        return LocalizationLanguages.english;
    }
  }
}
