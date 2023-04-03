// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audiobooks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Audiobooks _$$_AudiobooksFromJson(Map<String, dynamic> json) =>
    _$_Audiobooks(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_AudiobooksToJson(_$_Audiobooks instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items();

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{};
