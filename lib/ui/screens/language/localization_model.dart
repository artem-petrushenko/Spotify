import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/localization_service.dart';

enum LocalizationLanguages {
  english,
  russian,
}

class LocalizationViewModel extends ChangeNotifier {
  LocalizationViewModel({required this.localization}) {
    _getLocalizationData();
  }

  final _localizationService = LocalizationService();

  late LocalizationLanguages localization;

  String get localizationUnicode =>
      _localizationLanguagesToString(localization);

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
