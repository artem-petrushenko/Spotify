import 'package:freezed_annotation/freezed_annotation.dart';

part 'currently_playing_track.g.dart';

part 'currently_playing_track.freezed.dart';

@freezed
class CurrentlyPlayingTrackModel with _$CurrentlyPlayingTrackModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CurrentlyPlayingTrackModel(
    Device? device,
    String? repeatState,
    bool? shuffleState,
    Context? context,
    int? timestamp,
    int? progressMs,
    bool? isPlaying,
    Item? item,
    String? currentlyPlayingType,
    Actions? actions,
  ) = _CurrentlyPlayingTrackModel;

  factory CurrentlyPlayingTrackModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyPlayingTrackModelFromJson(json);
}

@freezed
class Device with _$Device {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Device(
    String? id,
    bool? isActive,
    bool? isPrivateSession,
    bool? isRestricted,
    String? name,
    String? type,
    int? volumePercent,
  ) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
class Context with _$Context {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Context(
    String? type,
    String? href,
    ExternalUrls? externalUrls,
    String? uri,
  ) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls(
    String? spotify,
  ) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Item with _$Item {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Item(
    Album? album,
    List<Artists>? artists,
    List<String>? availableMarkets,
    int? discNumber,
    int? durationMs,
    bool? explicit,
    ExternalIds? externalIds,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    bool? isPlayable,
    Restrictions? restrictions,
    String? name,
    int? popularity,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
    bool? isLocal,
  ) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Album(
    String? albumType,
    int? totalTracks,
    List<String>? availableMarkets,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    Restrictions? restrictions,
    String? type,
    String? uri,
    List<Copyrights>? copyrights,
    ExternalIds? externalIds,
    List<String>? genres,
    String? label,
    int? popularity,
    String? albumGroup,
    List<ArtistsSupport>? artists,
  ) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Images with _$Images {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Images(
    String? url,
    int? height,
    int? width,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Restrictions with _$Restrictions {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Restrictions(
    String? reason,
  ) = _Restrictions;

  factory Restrictions.fromJson(Map<String, dynamic> json) =>
      _$RestrictionsFromJson(json);
}

@freezed
class Copyrights with _$Copyrights {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Copyrights(
    String? text,
    String? type,
  ) = _Copyrights;

  factory Copyrights.fromJson(Map<String, dynamic> json) =>
      _$CopyrightsFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalIds(
    String? isrc,
    String? ean,
    String? upc,
  ) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}

@freezed
class ArtistsSupport with _$ArtistsSupport {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsSupport(
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _ArtistsSupport;

  factory ArtistsSupport.fromJson(Map<String, dynamic> json) =>
      _$ArtistsSupportFromJson(json);
}

@freezed
class Artists with _$Artists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Artists(
    ExternalUrls? externalUrls,
    Followers? followers,
    List<String>? genres,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    int? popularity,
    String? type,
    String? uri,
  ) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}

@freezed
class Followers with _$Followers {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Followers(
    String? href,
    int? total,
  ) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}

@freezed
class Actions with _$Actions {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Actions(
    bool? interruptingPlayback,
    bool? pausing,
    bool? resuming,
    bool? seeking,
    bool? skippingNext,
    bool? skippingPrev,
    bool? togglingRepeatContext,
    bool? togglingShuffle,
    bool? togglingRepeatTrack,
    bool? transferringPlayback,
  ) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}
