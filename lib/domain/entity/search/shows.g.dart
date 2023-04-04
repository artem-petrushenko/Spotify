// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shows _$$_ShowsFromJson(Map<String, dynamic> json) => _$_Shows(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsShows.fromJson(e as Map<String, dynamic>))
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

_$_ItemsShows _$$_ItemsShowsFromJson(Map<String, dynamic> json) =>
    _$_ItemsShows(
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['copyrights'] as List<dynamic>?)
          ?.map((e) => CopyrightShows.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String?,
      json['explicit'] as bool?,
      json['external_urls'] == null
          ? null
          : ExternalUrlsShows.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['html_description'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesShows.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_ItemsShowsToJson(_$_ItemsShows instance) =>
    <String, dynamic>{
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

_$_CopyrightShows _$$_CopyrightShowsFromJson(Map<String, dynamic> json) =>
    _$_CopyrightShows(
      json['text'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$_CopyrightShowsToJson(_$_CopyrightShows instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$_ExternalUrlsShows _$$_ExternalUrlsShowsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrlsShows(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsShowsToJson(
        _$_ExternalUrlsShows instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_ImagesShows _$$_ImagesShowsFromJson(Map<String, dynamic> json) =>
    _$_ImagesShows(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesShowsToJson(_$_ImagesShows instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
