import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_devices.g.dart';

part 'available_devices.freezed.dart';

@freezed
class AvailableDevicesModel with _$AvailableDevicesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AvailableDevicesModel(
    List<Devices>? devices,
  ) = _AvailableDevicesModel;

  factory AvailableDevicesModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableDevicesModelFromJson(json);
}

@freezed
class Devices with _$Devices {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Devices(
    String? id,
    bool? isActive,
    bool? isPrivateSession,
    bool? isRestricted,
    String? name,
    String? type,
    int? volumePercent,
  ) = _Devices;

  factory Devices.fromJson(Map<String, dynamic> json) =>
      _$DevicesFromJson(json);
}
