import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/player/available_devices.dart';

class PlayerApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<AvailableDevices> getAvailableDevices({
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/player/devices',
      accessToken: accessToken,
    );
    return AvailableDevices.fromJson(response);
  }
}
