import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/localization/abstract_localization_repository.dart';

import 'package:spotify_client/domain/services/localization/abstract_localization_service.dart';


class LocalizationService implements AbstractLocalizationService {
  @override
  Future<String> getLocalizationFromProvider() async =>
      await GetIt.instance<AbstractLocalizationRepository>().getLocalization();

  @override
  Future<void> setLocalizationToProvider(String value) async =>
      await GetIt.instance<AbstractLocalizationRepository>().setLocalization(value);
}
