// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audiobooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudiobooksImpl _$$AudiobooksImplFromJson(Map<String, dynamic> json) =>
    _$AudiobooksImpl(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsAudiobooks.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$AudiobooksImplToJson(_$AudiobooksImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$ItemsAudiobooksImpl _$$ItemsAudiobooksImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsAudiobooksImpl();

Map<String, dynamic> _$$ItemsAudiobooksImplToJson(
        _$ItemsAudiobooksImpl instance) =>
    <String, dynamic>{};
