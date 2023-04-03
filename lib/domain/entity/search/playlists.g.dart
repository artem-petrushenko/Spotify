// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Playlists _$$_PlaylistsFromJson(Map<String, dynamic> json) => _$_Playlists(
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

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      json['collaborative'] as bool?,
      json['description'] as String?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['name'] as String?,
      json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      json['public'] as bool?,
      json['snapshot_id'] as String?,
      json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
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

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
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

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      json['display_name'] as String?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_Tracks _$$_TracksFromJson(Map<String, dynamic> json) => _$_Tracks(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_TracksToJson(_$_Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
