// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_top_tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistsTopTracks _$ArtistsTopTracksFromJson(Map<String, dynamic> json) =>
    ArtistsTopTracks(
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => Tracks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistsTopTracksToJson(ArtistsTopTracks instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artists.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_playable': instance.isPlayable,
      'restrictions': instance.restrictions,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
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
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => Copyrights.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => ArtistLightweight.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'restrictions': instance.restrictions,
      'type': instance.type,
      'uri': instance.uri,
      'copyrights': instance.copyrights,
      'external_ids': instance.externalIds,
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
      'album_group': instance.albumGroup,
      'artists': instance.artists,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

Restrictions _$RestrictionsFromJson(Map<String, dynamic> json) => Restrictions(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$RestrictionsToJson(Restrictions instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

Copyrights _$CopyrightsFromJson(Map<String, dynamic> json) => Copyrights(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CopyrightsToJson(Copyrights instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) => ExternalIds(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$ExternalIdsToJson(ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

ArtistLightweight _$ArtistLightweightFromJson(Map<String, dynamic> json) =>
    ArtistLightweight(
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

Map<String, dynamic> _$ArtistLightweightToJson(ArtistLightweight instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

Artists _$ArtistsFromJson(Map<String, dynamic> json) => Artists(
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
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ArtistsToJson(Artists instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'genres': instance.genres,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'popularity': instance.popularity,
      'type': instance.type,
      'uri': instance.uri,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
