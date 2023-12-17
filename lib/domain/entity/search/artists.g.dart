// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistsImpl _$$ArtistsImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsImpl(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsArtists.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$ArtistsImplToJson(_$ArtistsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$ItemsArtistsImpl _$$ItemsArtistsImplFromJson(Map<String, dynamic> json) =>
    _$ItemsArtistsImpl(
      json['external_urls'] == null
          ? null
          : ExternalUrlsArtists.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['followers'] == null
          ? null
          : FollowersArtists.fromJson(
              json['followers'] as Map<String, dynamic>),
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesArtists.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String?,
      json['popularity'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$ItemsArtistsImplToJson(_$ItemsArtistsImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'genres': instance.genres,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'popularity': instance.popularity,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ExternalUrlsArtistsImpl _$$ExternalUrlsArtistsImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalUrlsArtistsImpl(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$ExternalUrlsArtistsImplToJson(
        _$ExternalUrlsArtistsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$FollowersArtistsImpl _$$FollowersArtistsImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowersArtistsImpl(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$FollowersArtistsImplToJson(
        _$FollowersArtistsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$ImagesArtistsImpl _$$ImagesArtistsImplFromJson(Map<String, dynamic> json) =>
    _$ImagesArtistsImpl(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$ImagesArtistsImplToJson(_$ImagesArtistsImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
