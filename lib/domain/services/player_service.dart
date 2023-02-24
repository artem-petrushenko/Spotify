import 'package:spotify_client/domain/api_client/player_api_client.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

class PlayerService {
  final _sessionDataProvider = SessionDataProvider();
  final _playerApiClient = PlayerApiClient();

  Future<AvailableDevices> getAvailableDevices() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final availableDevices = await _playerApiClient.getAvailableDevices(
      accessToken: accessToken ?? '',
    );
    return availableDevices;
  }
}
