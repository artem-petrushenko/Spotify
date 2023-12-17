// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistsImpl _$$PlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistsImpl(
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

Map<String, dynamic> _$$PlaylistsImplToJson(_$PlaylistsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$ItemsPlaylistsImpl _$$ItemsPlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$ItemsPlaylistsImpl(
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

Map<String, dynamic> _$$ItemsPlaylistsImplToJson(
        _$ItemsPlaylistsImpl instance) =>
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

_$ExternalUrlsPlaylistsImpl _$$ExternalUrlsPlaylistsImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalUrlsPlaylistsImpl(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$ExternalUrlsPlaylistsImplToJson(
        _$ExternalUrlsPlaylistsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$ImagesPlaylistsImpl _$$ImagesPlaylistsImplFromJson(
        Map<String, dynamic> json) =>
    _$ImagesPlaylistsImpl(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$ImagesPlaylistsImplToJson(
        _$ImagesPlaylistsImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$OwnerPlaylistsImpl _$$OwnerPlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$OwnerPlaylistsImpl(
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

Map<String, dynamic> _$$OwnerPlaylistsImplToJson(
        _$OwnerPlaylistsImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

_$TracksPlaylistsImpl _$$TracksPlaylistsImplFromJson(
        Map<String, dynamic> json) =>
    _$TracksPlaylistsImpl(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$TracksPlaylistsImplToJson(
        _$TracksPlaylistsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
