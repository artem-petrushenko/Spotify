// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailableDevicesModel _$$_AvailableDevicesModelFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableDevicesModel(
      (json['devices'] as List<dynamic>?)
          ?.map((e) => Devices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AvailableDevicesModelToJson(
        _$_AvailableDevicesModel instance) =>
    <String, dynamic>{
      'devices': instance.devices?.map((e) => e.toJson()).toList(),
    };

_$_Devices _$$_DevicesFromJson(Map<String, dynamic> json) => _$_Devices(
      json['id'] as String?,
      json['is_active'] as bool?,
      json['is_private_session'] as bool?,
      json['is_restricted'] as bool?,
      json['name'] as String?,
      json['type'] as String?,
      json['volume_percent'] as int?,
    );

Map<String, dynamic> _$$_DevicesToJson(_$_Devices instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
    };
