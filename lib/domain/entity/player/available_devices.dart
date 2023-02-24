import 'package:json_annotation/json_annotation.dart';

part 'available_devices.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AvailableDevices {
  List<Devices>? devices;

  AvailableDevices({
    required this.devices,
  });

  factory AvailableDevices.fromJson(Map<String, dynamic> json) =>
      _$AvailableDevicesFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableDevicesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Devices {
  String? id;
  bool? isActive;
  bool? isPrivateSession;
  bool? isRestricted;
  String? name;
  String? type;
  int? volumePercent;

  Devices({
    required this.id,
    required this.isActive,
    required this.isPrivateSession,
    required this.isRestricted,
    required this.name,
    required this.type,
    required this.volumePercent,
  });

  factory Devices.fromJson(Map<String, dynamic> json) =>
      _$DevicesFromJson(json);

  Map<String, dynamic> toJson() => _$DevicesToJson(this);
}
