// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_related_artists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistsRelatedArtistsModel _$$_ArtistsRelatedArtistsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArtistsRelatedArtistsModel(
      (json['artists'] as List<dynamic>)
          .map((e) => Artists.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistsRelatedArtistsModelToJson(
        _$_ArtistsRelatedArtistsModel instance) =>
    <String, dynamic>{
      'artists': instance.artists.map((e) => e.toJson()).toList(),
    };

_$_Artists _$$_ArtistsFromJson(Map<String, dynamic> json) => _$_Artists(
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String?,
      json['popularity'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ArtistsToJson(_$_Artists instance) =>
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

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Followers _$$_FollowersFromJson(Map<String, dynamic> json) => _$_Followers(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_FollowersToJson(_$_Followers instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
