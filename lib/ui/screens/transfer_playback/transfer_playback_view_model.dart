import 'package:flutter/cupertino.dart';
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

  const Device({
    required this.id,
    required this.isActive,
    required this.isRestricted,
    required this.name,
    required this.type,
    required this.volumePercent,
  });

  Device copyWith({
    String? id,
    bool? isActive,
    bool? isRestricted,
    String? name,
    String? type,
    int? volumePercent,
  }) {
    return Device(
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      isRestricted: isRestricted ?? this.isRestricted,
      name: name ?? this.name,
      type: type ?? this.type,
      volumePercent: volumePercent ?? this.volumePercent,
    );
  }
}

class TransferPlaybackRenderedData {
  Status status = Status.loading;
  List<Device> availableDevices = <Device>[];
}

class TransferPlaybackViewModel extends ChangeNotifier {
  TransferPlaybackViewModel() {
    loadDetails();
  }

  final data = TransferPlaybackRenderedData();
  final _playerService = PlayerService();

  void loadDetails() async {
    await _playerService
        .getAvailableDevices()
        .then((value) => _addAvailableDevicesData(value))
        .onError((error, stackTrace) => data.status = Status.error);

    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void transferPlayback(String deviceId, BuildContext context) async {
    await _playerService.transferPlayback(
        deviceIds: [deviceId]).then((value) => closeTransferPlayback(context));
  }

  void closeTransferPlayback(BuildContext context) =>
      Navigator.of(context).pop();

  void _addAvailableDevicesData(AvailableDevicesModel availableDevicesModel) {
    if (availableDevicesModel.devices == null) return;
    data.availableDevices.addAll(
      availableDevicesModel.devices!.map(
        (e) => Device(
          id: e.id,
          isActive: e.isActive,
          isRestricted: e.isRestricted,
          name: e.name,
          type: e.type,
          volumePercent: e.volumePercent,
        ),
      ),
    );
  }
}
