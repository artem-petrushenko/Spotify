import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/localization_service.dart';

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

class LocalizationViewModel extends ChangeNotifier {
  LocalizationViewModel({required this.localization}) {
    _getLocalizationData();
  }

  static const localizationList = <LocalizationModel>[
    LocalizationModel(
        englishName: 'English',
        name: 'English',
        localizationLanguages: LocalizationLanguages.english),
    LocalizationModel(
        englishName: 'Russian',
        name: 'Русский',
        localizationLanguages: LocalizationLanguages.russian),
    LocalizationModel(
        englishName: 'Ukrainian',
        name: 'Українська',
        localizationLanguages: LocalizationLanguages.ukrainian),
    LocalizationModel(
        englishName: 'Chinese',
        name: '中国人',
        localizationLanguages: LocalizationLanguages.chinese),
    LocalizationModel(
        englishName: 'Belarusian',
        name: 'Беларускі',
        localizationLanguages: LocalizationLanguages.belarusian),
    LocalizationModel(
        englishName: 'Czech',
        name: 'Čeština',
        localizationLanguages: LocalizationLanguages.czech),
    LocalizationModel(
        englishName: 'Polish',
        name: 'Polský',
        localizationLanguages: LocalizationLanguages.polish),
    LocalizationModel(
        englishName: 'Swedish',
        name: 'Svenska',
        localizationLanguages: LocalizationLanguages.swedish),
    LocalizationModel(
        englishName: 'Serbian',
        name: 'Спрски',
        localizationLanguages: LocalizationLanguages.serbian),
    LocalizationModel(
        englishName: 'Italian',
        name: 'Italiano',
        localizationLanguages: LocalizationLanguages.italian),
    LocalizationModel(
        englishName: 'Indonesian',
        name: 'Bahasa Indonesia',
        localizationLanguages: LocalizationLanguages.indonesian),
    LocalizationModel(
        englishName: 'Hungarian',
        name: 'Magyar',
        localizationLanguages: LocalizationLanguages.hungarian),
    LocalizationModel(
        englishName: 'German',
        name: 'Deutsch',
        localizationLanguages: LocalizationLanguages.german),
  ];

  final _localizationService = LocalizationService();

  late LocalizationLanguages localization;

  String get localizationUnicode =>
      _localizationLanguagesToString(localization);

  void closeScreen(BuildContext context) => Navigator.of(context).pop();

  void setLocalizationData(LocalizationLanguages value) {
    localization = value;
    _localizationService.setLocalizationToProvider(
        _localizationLanguagesToString(localization));
    notifyListeners();
  }

  Future<void> _getLocalizationData() async {
    localization = _stringToLocalizationLanguages(
        await _localizationService.getLocalizationFromProvider());
    notifyListeners();
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
