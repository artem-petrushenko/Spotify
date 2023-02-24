// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableDevices _$AvailableDevicesFromJson(Map<String, dynamic> json) =>
    AvailableDevices(
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => Devices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvailableDevicesToJson(AvailableDevices instance) =>
    <String, dynamic>{
      'devices': instance.devices,
    };

Devices _$DevicesFromJson(Map<String, dynamic> json) => Devices(
      id: json['id'] as String?,
      isActive: json['is_active'] as bool?,
      isPrivateSession: json['is_private_session'] as bool?,
      isRestricted: json['is_restricted'] as bool?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      volumePercent: json['volume_percent'] as int?,
    );

Map<String, dynamic> _$DevicesToJson(Devices instance) => <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
    };
