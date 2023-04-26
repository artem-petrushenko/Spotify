abstract class AbstractLocalizationRepository {
  Future<String> getLocalization();

  Future<void> setLocalization(String value);
}
