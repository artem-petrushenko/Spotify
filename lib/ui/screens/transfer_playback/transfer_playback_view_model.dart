import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/services/player_service.dart';

enum Status { loading, completed, error }

class Device {
  final String? id;
  final bool? isActive;
  final bool? isRestricted;
  final String? name;
  final String? type;
  final int? volumePercent;
  final IconData? iconData;

  const Device({
    required this.id,
    required this.isActive,
    required this.isRestricted,
    required this.name,
    required this.type,
    required this.volumePercent,
    required this.iconData,
  });

  Device copyWith({
    String? id,
    bool? isActive,
    bool? isRestricted,
    String? name,
    String? type,
    int? volumePercent,
    IconData? iconData,
  }) {
    return Device(
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      isRestricted: isRestricted ?? this.isRestricted,
      name: name ?? this.name,
      type: type ?? this.type,
      volumePercent: volumePercent ?? this.volumePercent,
      iconData: iconData ?? this.iconData,
    );
  }
}

class TransferPlaybackRenderedData {
  final Status status;
  Device? deviceIsActive;
  List<Device>? deviceIsNotActives;

  TransferPlaybackRenderedData({
    required this.status,
    required this.deviceIsActive,
    required this.deviceIsNotActives,
  });

  TransferPlaybackRenderedData copyWith({
    Status? status,
    Device? deviceIsActive,
    List<Device>? deviceIsNotActives,
  }) {
    return TransferPlaybackRenderedData(
      status: status ?? this.status,
      deviceIsActive: deviceIsActive ?? this.deviceIsActive,
      deviceIsNotActives: deviceIsNotActives ?? this.deviceIsNotActives,
    );
  }
}

class TransferPlaybackViewModel extends ChangeNotifier {
  TransferPlaybackViewModel() {
    loadDetails();
  }

  TransferPlaybackRenderedData data = TransferPlaybackRenderedData(
    status: Status.loading,
    deviceIsActive: null,
    deviceIsNotActives: [],
  );

  final _playerService = PlayerService();

  void loadDetails() async {
    await _playerService
        .getAvailableDevices()
        .then((value) => _addAvailableDevicesData(value))
        .onError(
            (error, stackTrace) => data = data.copyWith(status: Status.error));

    if (data.status != Status.error) {
      data = data.copyWith(status: Status.completed);
    }
    notifyListeners();
  }

  void setPlaybackVolume(double volumePercent) async {
    await _playerService.setPlaybackVolume(
        volumePercent: volumePercent.toInt());
    onChangePosition(volumePercent);
  }

  void onChangePosition(double volumePercent) {
    data.deviceIsActive =
        data.deviceIsActive?.copyWith(volumePercent: volumePercent.toInt());
    notifyListeners();
  }

  void transferPlayback(String deviceId, BuildContext context) async {
    await _playerService.transferPlayback(
        deviceIds: [deviceId]).then((value) => closeTransferPlayback(context));
  }

  void closeTransferPlayback(BuildContext context) =>
      Navigator.of(context).pop();

  void _addAvailableDevicesData(AvailableDevicesModel availableDevicesModel) {
    data = data.copyWith(
      deviceIsNotActives: availableDevicesModel.devices
          ?.where((element) => element.isActive == false)
          .map(
            (e) => Device(
              id: e.id,
              isActive: e.isActive,
              isRestricted: e.isRestricted,
              name: e.name,
              type: e.type,
              volumePercent: e.volumePercent,
              iconData: _deviceIcon(e.type),
            ),
          )
          .toList(),
      deviceIsActive: Device(
        id: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .id,
        isActive: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .isActive,
        isRestricted: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .isRestricted,
        name: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .name,
        type: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .type,
        volumePercent: availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .volumePercent,
        iconData: _deviceIcon(availableDevicesModel.devices
            ?.firstWhere((element) => element.isActive == true)
            .type)
      ),
    );
  }

  IconData _deviceIcon(String? type) {
    print(type);
    switch (type?.toLowerCase()) {
      case 'computer':
        return Icons.computer_rounded;
      case 'tablet':
        return Icons.tablet_android_rounded;
      case 'smartphone':
        return Icons.smartphone_rounded;
      case 'speaker':
        return Icons.speaker_rounded;
      case 'tv':
        return Icons.tv_rounded;
      case 'avr':
        return Icons.video_label_rounded;
      case 'stb':
        return Icons.video_label_rounded;
      case 'audio_dongle':
        return Icons.bluetooth_audio_rounded;
      case 'game_console':
        return Icons.gamepad_rounded;
      case 'cast_video':
        return Icons.cast_connected_rounded;
      case 'cast_audio':
        return Icons.broadcast_on_home_rounded;
      case 'automobile':
        return Icons.directions_car_rounded;
      default:
        return Icons.error_outline_outlined;
    }
  }
}
