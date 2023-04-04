// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Playlists _$$_PlaylistsFromJson(Map<String, dynamic> json) => _$_Playlists(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsPlaylists.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_PlaylistsToJson(_$_Playlists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_ItemsPlaylists _$$_ItemsPlaylistsFromJson(Map<String, dynamic> json) =>
    _$_ItemsPlaylists(
      json['collaborative'] as bool?,
      json['description'] as String?,
      json['external_urls'] == null
          ? null
          : ExternalUrlsPlaylists.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesPlaylists.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String?,
      json['owner'] == null
          ? null
          : OwnerPlaylists.fromJson(json['owner'] as Map<String, dynamic>),
      json['public'] as bool?,
      json['snapshot_id'] as String?,
      json['tracks'] == null
          ? null
          : TracksPlaylists.fromJson(json['tracks'] as Map<String, dynamic>),
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ItemsPlaylistsToJson(_$_ItemsPlaylists instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'owner': instance.owner?.toJson(),
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExternalUrlsPlaylists _$$_ExternalUrlsPlaylistsFromJson(
        Map<String, dynamic> json) =>
    _$_ExternalUrlsPlaylists(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsPlaylistsToJson(
        _$_ExternalUrlsPlaylists instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_ImagesPlaylists _$$_ImagesPlaylistsFromJson(Map<String, dynamic> json) =>
    _$_ImagesPlaylists(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesPlaylistsToJson(_$_ImagesPlaylists instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_OwnerPlaylists _$$_OwnerPlaylistsFromJson(Map<String, dynamic> json) =>
    _$_OwnerPlaylists(
      json['display_name'] as String?,
      json['external_urls'] == null
          ? null
          : ExternalUrlsPlaylists.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_OwnerPlaylistsToJson(_$_OwnerPlaylists instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_TracksPlaylists _$$_TracksPlaylistsFromJson(Map<String, dynamic> json) =>
    _$_TracksPlaylists(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_TracksPlaylistsToJson(_$_TracksPlaylists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
