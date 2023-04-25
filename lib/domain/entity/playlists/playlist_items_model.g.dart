// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistItemsModel _$$_PlaylistItemsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlaylistItemsModel(
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      offset: json['offset'] as int?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaylistItemsModelToJson(
        _$_PlaylistItemsModel instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      addedAt: json['added_at'] as String?,
      addedBy: json['added_by'] == null
          ? null
          : AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
      isLocal: json['is_local'] as bool?,
      track: json['track'] == null
          ? null
          : Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'added_at': instance.addedAt,
      'added_by': instance.addedBy?.toJson(),
      'is_local': instance.isLocal,
      'track': instance.track?.toJson(),
    };

_$_AddedBy _$$_AddedByFromJson(Map<String, dynamic> json) => _$_AddedBy(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_AddedByToJson(_$_AddedBy instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Followers _$$_FollowersFromJson(Map<String, dynamic> json) => _$_Followers(
      href: json['href'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_FollowersToJson(_$_Followers instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => TrackArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: json['disc_number'] as int?,
      durationMs: json['duration_ms'] as int?,
      explicit: json['explicit'] as bool?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      isPlayable: json['is_playable'] as bool?,
      restrictions: json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: json['track_number'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
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
      'is_playable': instance.isPlayable,
      'restrictions': instance.restrictions?.toJson(),
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

_$_Album _$$_AlbumFromJson(Map<String, dynamic> json) => _$_Album(
      albumType: json['album_type'] as String?,
      totalTracks: json['total_tracks'] as int?,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['release_date'] as String?,
      releaseDatePrecision: json['release_date_precision'] as String?,
      restrictions: json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      copyrights: (json['copyrights'] as List<dynamic>?)
          ?.map((e) => Copyright.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      label: json['label'] as String?,
      popularity: json['popularity'] as int?,
      albumGroup: json['album_group'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => AlbumArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumToJson(_$_Album instance) => <String, dynamic>{
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
      'album_group': instance.albumGroup,
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
    };

_$_AlbumArtist _$$_AlbumArtistFromJson(Map<String, dynamic> json) =>
    _$_AlbumArtist(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_AlbumArtistToJson(_$_AlbumArtist instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_Copyright _$$_CopyrightFromJson(Map<String, dynamic> json) => _$_Copyright(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_CopyrightToJson(_$_Copyright instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$_ExternalIds _$$_ExternalIdsFromJson(Map<String, dynamic> json) =>
    _$_ExternalIds(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$$_ExternalIdsToJson(_$_ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_Restrictions _$$_RestrictionsFromJson(Map<String, dynamic> json) =>
    _$_Restrictions(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_RestrictionsToJson(_$_Restrictions instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_$_TrackArtist _$$_TrackArtistFromJson(Map<String, dynamic> json) =>
    _$_TrackArtist(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_TrackArtistToJson(_$_TrackArtist instance) =>
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
