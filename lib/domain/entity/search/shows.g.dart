// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shows _$$_ShowsFromJson(Map<String, dynamic> json) => _$_Shows(
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

Map<String, dynamic> _$$_ShowsToJson(_$_Shows instance) => <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['copyrights'] as List<dynamic>?)
          ?.map((e) => Copyright.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String?,
      json['explicit'] as bool?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['html_description'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['is_externally_hosted'] as bool?,
      (json['languages'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['media_type'] as String?,
      json['name'] as String?,
      json['publisher'] as String?,
      json['total_episodes'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'available_markets': instance.availableMarkets,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'html_description': instance.htmlDescription,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'languages': instance.languages,
      'media_type': instance.mediaType,
      'name': instance.name,
      'publisher': instance.publisher,
      'total_episodes': instance.totalEpisodes,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_Copyright _$$_CopyrightFromJson(Map<String, dynamic> json) => _$_Copyright(
      json['text'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$_CopyrightToJson(_$_Copyright instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
