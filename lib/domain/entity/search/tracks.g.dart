// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tracks _$$_TracksFromJson(Map<String, dynamic> json) => _$_Tracks(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsTracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_TracksToJson(_$_Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_ItemsTracks _$$_ItemsTracksFromJson(Map<String, dynamic> json) =>
    _$_ItemsTracks(
      json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistsTracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['disc_number'] as int?,
      json['duration_ms'] as int?,
      json['explicit'] as bool?,
      json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      json['external_urls'] == null
          ? null
          : ExternalUrlsTracks.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['is_local'] as bool?,
      json['name'] as String?,
      json['popularity'] as int?,
      json['preview_url'] as String?,
      json['track_number'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ItemsTracksToJson(_$_ItemsTracks instance) =>
    <String, dynamic>{
      'album': instance.album?.toJson(),
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds?.toJson(),
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'is_local': instance.isLocal,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_Album _$$_AlbumFromJson(Map<String, dynamic> json) => _$_Album(
      json['album_group'] as String?,
      json['album_type'] as String?,
      (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistsTracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['external_urls'] == null
          ? null
          : ExternalUrlsTracks.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesTracks.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['is_playable'] as bool?,
      json['name'] as String?,
      json['release_date'] as String?,
      json['release_date_precision'] as String?,
      json['total_tracks'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_AlbumToJson(_$_Album instance) => <String, dynamic>{
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

_$_ArtistsTracks _$$_ArtistsTracksFromJson(Map<String, dynamic> json) =>
    _$_ArtistsTracks(
      json['external_urls'] == null
          ? null
          : ExternalUrlsTracks.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ArtistsTracksToJson(_$_ArtistsTracks instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExternalUrlsTracks _$$_ExternalUrlsTracksFromJson(
        Map<String, dynamic> json) =>
    _$_ExternalUrlsTracks(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsTracksToJson(
        _$_ExternalUrlsTracks instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_ImagesTracks _$$_ImagesTracksFromJson(Map<String, dynamic> json) =>
    _$_ImagesTracks(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesTracksToJson(_$_ImagesTracks instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };

_$_ExternalIds _$$_ExternalIdsFromJson(Map<String, dynamic> json) =>
    _$_ExternalIds(
      json['isrc'] as String?,
    );

Map<String, dynamic> _$$_ExternalIdsToJson(_$_ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
    };
