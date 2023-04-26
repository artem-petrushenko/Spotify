// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumModel _$$_AlbumModelFromJson(Map<String, dynamic> json) =>
    _$_AlbumModel(
      json['album_type'] as String?,
      json['total_tracks'] as int?,
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      json['release_date'] as String?,
      json['release_date_precision'] as String?,
      json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      json['type'] as String?,
      json['uri'] as String?,
      (json['copyrights'] as List<dynamic>?)
          ?.map((e) => Copyrights.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['label'] as String?,
      json['popularity'] as int?,
      (json['artists'] as List<dynamic>?)
          ?.map((e) => Artists.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AlbumModelToJson(_$_AlbumModel instance) =>
    <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'restrictions': instance.restrictions?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'external_ids': instance.externalIds?.toJson(),
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks?.toJson(),
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

_$_Restrictions _$$_RestrictionsFromJson(Map<String, dynamic> json) =>
    _$_Restrictions(
      json['reason'] as String?,
    );

Map<String, dynamic> _$$_RestrictionsToJson(_$_Restrictions instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_$_Copyrights _$$_CopyrightsFromJson(Map<String, dynamic> json) =>
    _$_Copyrights(
      json['text'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$_CopyrightsToJson(_$_Copyrights instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$_ExternalIds _$$_ExternalIdsFromJson(Map<String, dynamic> json) =>
    _$_ExternalIds(
      json['isrc'] as String?,
      json['ean'] as String?,
      json['upc'] as String?,
    );

Map<String, dynamic> _$$_ExternalIdsToJson(_$_ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
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

_$_Followers _$$_FollowersFromJson(Map<String, dynamic> json) => _$_Followers(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_FollowersToJson(_$_Followers instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$_Tracks _$$_TracksFromJson(Map<String, dynamic> json) => _$_Tracks(
      json['href'] as String?,
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TracksToJson(_$_Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistsItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['disc_number'] as int?,
      json['duration_ms'] as int?,
      json['explicit'] as bool?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['is_playable'] as bool?,
      json['linked_from'] == null
          ? null
          : LinkedFrom.fromJson(json['linked_from'] as Map<String, dynamic>),
      json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      json['name'] as String?,
      json['preview_url'] as String?,
      json['track_number'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
      json['is_local'] as bool?,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom?.toJson(),
      'restrictions': instance.restrictions?.toJson(),
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

_$_ArtistsItems _$$_ArtistsItemsFromJson(Map<String, dynamic> json) =>
    _$_ArtistsItems(
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ArtistsItemsToJson(_$_ArtistsItems instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_LinkedFrom _$$_LinkedFromFromJson(Map<String, dynamic> json) =>
    _$_LinkedFrom(
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_LinkedFromToJson(_$_LinkedFrom instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };
