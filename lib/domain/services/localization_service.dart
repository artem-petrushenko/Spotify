import 'package:spotify_client/domain/data_providers/localization_provider.dart';

class LocalizationService {
  final _localizationProvider = LocalizationProvider();

  Future<String> getLocalizationFromProvider() async =>
      await _localizationProvider.getLocalization();

  Future<void> setLocalizationToProvider(String value) async =>
      await _localizationProvider.setLocalization(value);
}
