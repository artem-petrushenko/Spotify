// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumsImpl _$$AlbumsImplFromJson(Map<String, dynamic> json) => _$AlbumsImpl(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$AlbumsImplToJson(_$AlbumsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$ItemsAlbumAlbumsImpl _$$ItemsAlbumAlbumsImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsAlbumAlbumsImpl(
      json['album_group'] as String?,
      json['album_type'] as String?,
      (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistsAlbums.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['external_urls'] == null
          ? null
          : ExternalUrlsAlbums.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesAlbums.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['is_playable'] as bool?,
      json['name'] as String?,
      json['release_date'] as String?,
      json['release_date_precision'] as String?,
      json['total_tracks'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$ItemsAlbumAlbumsImplToJson(
        _$ItemsAlbumAlbumsImpl instance) =>
    <String, dynamic>{
      'album_group': instance.albumGroup,
      'album_type': instance.albumType,
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'is_playable': instance.isPlayable,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'total_tracks': instance.totalTracks,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ArtistsAlbumsImpl _$$ArtistsAlbumsImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsAlbumsImpl(
      json['external_urls'] == null
          ? null
          : ExternalUrlsAlbums.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$ArtistsAlbumsImplToJson(_$ArtistsAlbumsImpl instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ExternalUrlsAlbumsImpl _$$ExternalUrlsAlbumsImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalUrlsAlbumsImpl(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$ExternalUrlsAlbumsImplToJson(
        _$ExternalUrlsAlbumsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$ImagesAlbumsImpl _$$ImagesAlbumsImplFromJson(Map<String, dynamic> json) =>
    _$ImagesAlbumsImpl(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$ImagesAlbumsImplToJson(_$ImagesAlbumsImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
