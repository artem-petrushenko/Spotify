// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistModel _$$_PlaylistModelFromJson(Map<String, dynamic> json) =>
    _$_PlaylistModel(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PlaylistModelImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      public: json['public'] as bool?,
      snapshotId: json['snapshotId'] as String?,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_PlaylistModelToJson(_$_PlaylistModel instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'externalUrls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'public': instance.public,
      'snapshotId': instance.snapshotId,
      'tracks': instance.tracks,
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

_$_PlaylistModelImage _$$_PlaylistModelImageFromJson(
        Map<String, dynamic> json) =>
    _$_PlaylistModelImage(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_PlaylistModelImageToJson(
        _$_PlaylistModelImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'externalUrls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
      'displayName': instance.displayName,
    };

_$_Tracks _$$_TracksFromJson(Map<String, dynamic> json) => _$_Tracks(
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

Map<String, dynamic> _$$_TracksToJson(_$_Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      addedAt: json['addedAt'] as String?,
      addedBy: json['addedBy'] == null
          ? null
          : AddedBy.fromJson(json['addedBy'] as Map<String, dynamic>),
      isLocal: json['isLocal'] as bool?,
      track: json['track'] == null
          ? null
          : Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'addedAt': instance.addedAt,
      'addedBy': instance.addedBy,
      'isLocal': instance.isLocal,
      'track': instance.track,
    };

_$_AddedBy _$$_AddedByFromJson(Map<String, dynamic> json) => _$_AddedBy(
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_AddedByToJson(_$_AddedBy instance) =>
    <String, dynamic>{
      'externalUrls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['availableMarkets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: json['discNumber'] as int?,
      durationMs: json['durationMs'] as int?,
      explicit: json['explicit'] as bool?,
      externalIds: json['externalIds'] == null
          ? null
          : ExternalIds.fromJson(json['externalIds'] as Map<String, dynamic>),
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      popularity: json['popularity'] as int?,
      previewUrl: json['previewUrl'] as String?,
      trackNumber: json['trackNumber'] as int?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['isLocal'] as bool?,
      episode: json['episode'] as bool?,
      track: json['track'] as bool?,
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'availableMarkets': instance.availableMarkets,
      'discNumber': instance.discNumber,
      'durationMs': instance.durationMs,
      'explicit': instance.explicit,
      'externalIds': instance.externalIds,
      'externalUrls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'previewUrl': instance.previewUrl,
      'trackNumber': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'isLocal': instance.isLocal,
      'episode': instance.episode,
      'track': instance.track,
    };

_$_Album _$$_AlbumFromJson(Map<String, dynamic> json) => _$_Album(
      albumType: json['albumType'] as String?,
      totalTracks: json['totalTracks'] as int?,
      availableMarkets: (json['availableMarkets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => AlbumImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      releaseDatePrecision: json['releaseDatePrecision'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      albumGroup: json['albumGroup'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPlayable: json['isPlayable'] as bool?,
    );

Map<String, dynamic> _$$_AlbumToJson(_$_Album instance) => <String, dynamic>{
      'albumType': instance.albumType,
      'totalTracks': instance.totalTracks,
      'availableMarkets': instance.availableMarkets,
      'externalUrls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'releaseDatePrecision': instance.releaseDatePrecision,
      'type': instance.type,
      'uri': instance.uri,
      'albumGroup': instance.albumGroup,
      'artists': instance.artists,
      'isPlayable': instance.isPlayable,
    };

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
      externalUrls: json['externalUrls'] == null
          ? null
          : ExternalUrls.fromJson(json['externalUrls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'externalUrls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_AlbumImage _$$_AlbumImageFromJson(Map<String, dynamic> json) =>
    _$_AlbumImage(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_AlbumImageToJson(_$_AlbumImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_ExternalIds _$$_ExternalIdsFromJson(Map<String, dynamic> json) =>
    _$_ExternalIds(
      isrc: json['isrc'] as String?,
    );

Map<String, dynamic> _$$_ExternalIdsToJson(_$_ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
    };
