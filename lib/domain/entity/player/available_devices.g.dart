// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableDevicesModelImpl _$$AvailableDevicesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableDevicesModelImpl(
      (json['devices'] as List<dynamic>?)
          ?.map((e) => Devices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvailableDevicesModelImplToJson(
        _$AvailableDevicesModelImpl instance) =>
    <String, dynamic>{
      'devices': instance.devices?.map((e) => e.toJson()).toList(),
    };

_$DevicesImpl _$$DevicesImplFromJson(Map<String, dynamic> json) =>
    _$DevicesImpl(
      json['id'] as String?,
      json['is_active'] as bool?,
      json['is_private_session'] as bool?,
      json['is_restricted'] as bool?,
      json['name'] as String?,
      json['type'] as String?,
      json['volume_percent'] as int?,
    );

Map<String, dynamic> _$$DevicesImplToJson(_$DevicesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
    };
