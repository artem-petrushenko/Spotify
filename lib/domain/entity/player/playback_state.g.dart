// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaybackStateModelImpl _$$PlaybackStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaybackStateModelImpl(
      json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      json['repeat_state'] as String?,
      json['shuffle_state'] as bool?,
      json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
      json['timestamp'] as int?,
      json['progress_ms'] as int?,
      json['is_playing'] as bool?,
      json['item'] == null
          ? null
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      json['currently_playing_type'] as String?,
      json['actions'] == null
          ? null
          : Actions.fromJson(json['actions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaybackStateModelImplToJson(
        _$PlaybackStateModelImpl instance) =>
    <String, dynamic>{
      'device': instance.device?.toJson(),
      'repeat_state': instance.repeatState,
      'shuffle_state': instance.shuffleState,
      'context': instance.context?.toJson(),
      'timestamp': instance.timestamp,
      'progress_ms': instance.progressMs,
      'is_playing': instance.isPlaying,
      'item': instance.item?.toJson(),
      'currently_playing_type': instance.currentlyPlayingType,
      'actions': instance.actions?.toJson(),
    };

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
      json['id'] as String?,
      json['is_active'] as bool?,
      json['is_private_session'] as bool?,
      json['is_restricted'] as bool?,
      json['name'] as String?,
      json['type'] as String?,
      json['volume_percent'] as int?,
    );

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'is_private_session': instance.isPrivateSession,
      'is_restricted': instance.isRestricted,
      'name': instance.name,
      'type': instance.type,
      'volume_percent': instance.volumePercent,
    };

_$ContextImpl _$$ContextImplFromJson(Map<String, dynamic> json) =>
    _$ContextImpl(
      json['type'] as String?,
      json['href'] as String?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['uri'] as String?,
    );

Map<String, dynamic> _$$ContextImplToJson(_$ContextImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'href': instance.href,
      'external_urls': instance.externalUrls?.toJson(),
      'uri': instance.uri,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      (json['artists'] as List<dynamic>?)
          ?.map((e) => Artists.fromJson(e as Map<String, dynamic>))
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
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      json['is_playable'] as bool?,
      json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      json['name'] as String?,
      json['popularity'] as int?,
      json['preview_url'] as String?,
      json['track_number'] as int?,
      json['type'] as String?,
      json['uri'] as String?,
      json['is_local'] as bool?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
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

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
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
      json['album_group'] as String?,
      (json['artists'] as List<dynamic>?)
          ?.map((e) => ArtistsSupport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
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
      'album_group': instance.albumGroup,
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$RestrictionsImpl _$$RestrictionsImplFromJson(Map<String, dynamic> json) =>
    _$RestrictionsImpl(
      json['reason'] as String?,
    );

Map<String, dynamic> _$$RestrictionsImplToJson(_$RestrictionsImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_$CopyrightsImpl _$$CopyrightsImplFromJson(Map<String, dynamic> json) =>
    _$CopyrightsImpl(
      json['text'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$$CopyrightsImplToJson(_$CopyrightsImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$ExternalIdsImpl _$$ExternalIdsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalIdsImpl(
      json['isrc'] as String?,
      json['ean'] as String?,
      json['upc'] as String?,
    );

Map<String, dynamic> _$$ExternalIdsImplToJson(_$ExternalIdsImpl instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

_$ArtistsSupportImpl _$$ArtistsSupportImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsSupportImpl(
      json['href'] as String?,
      json['id'] as String?,
      json['name'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$ArtistsSupportImplToJson(
        _$ArtistsSupportImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ArtistsImpl _$$ArtistsImplFromJson(Map<String, dynamic> json) =>
    _$ArtistsImpl(
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

Map<String, dynamic> _$$ArtistsImplToJson(_$ArtistsImpl instance) =>
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

_$FollowersImpl _$$FollowersImplFromJson(Map<String, dynamic> json) =>
    _$FollowersImpl(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$FollowersImplToJson(_$FollowersImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$ActionsImpl _$$ActionsImplFromJson(Map<String, dynamic> json) =>
    _$ActionsImpl(
      json['interrupting_playback'] as bool?,
      json['pausing'] as bool?,
      json['resuming'] as bool?,
      json['seeking'] as bool?,
      json['skipping_next'] as bool?,
      json['skipping_prev'] as bool?,
      json['toggling_repeat_context'] as bool?,
      json['toggling_shuffle'] as bool?,
      json['toggling_repeat_track'] as bool?,
      json['transferring_playback'] as bool?,
    );

Map<String, dynamic> _$$ActionsImplToJson(_$ActionsImpl instance) =>
    <String, dynamic>{
      'interrupting_playback': instance.interruptingPlayback,
      'pausing': instance.pausing,
      'resuming': instance.resuming,
      'seeking': instance.seeking,
      'skipping_next': instance.skippingNext,
      'skipping_prev': instance.skippingPrev,
      'toggling_repeat_context': instance.togglingRepeatContext,
      'toggling_shuffle': instance.togglingShuffle,
      'toggling_repeat_track': instance.togglingRepeatTrack,
      'transferring_playback': instance.transferringPlayback,
    };
