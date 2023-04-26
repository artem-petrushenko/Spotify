abstract class AbstractLocalizationService {
  Future<String> getLocalizationFromProvider();

  Future<void> setLocalizationToProvider(String value);
}
