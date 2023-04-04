// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Artists _$$_ArtistsFromJson(Map<String, dynamic> json) => _$_Artists(
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

Map<String, dynamic> _$$_ArtistsToJson(_$_Artists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_ItemsArtists _$$_ItemsArtistsFromJson(Map<String, dynamic> json) =>
    _$_ItemsArtists(
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

Map<String, dynamic> _$$_ItemsArtistsToJson(_$_ItemsArtists instance) =>
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

_$_ExternalUrlsArtists _$$_ExternalUrlsArtistsFromJson(
        Map<String, dynamic> json) =>
    _$_ExternalUrlsArtists(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsArtistsToJson(
        _$_ExternalUrlsArtists instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_FollowersArtists _$$_FollowersArtistsFromJson(Map<String, dynamic> json) =>
    _$_FollowersArtists(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_FollowersArtistsToJson(_$_FollowersArtists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$_ImagesArtists _$$_ImagesArtistsFromJson(Map<String, dynamic> json) =>
    _$_ImagesArtists(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesArtistsToJson(_$_ImagesArtists instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
