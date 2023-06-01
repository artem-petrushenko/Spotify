import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_saved_tracks_item_entity.freezed.dart';

part 'users_saved_tracks_item_entity.g.dart';

@freezed
class UsersSavedTracksItemEntity with _$UsersSavedTracksItemEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UsersSavedTracksItemEntity({
    String? addedAt,
    Track? track,
  }) = _UsersSavedTracksItemEntity;

  factory UsersSavedTracksItemEntity.fromJson(Map<String, dynamic> json) =>
      _$UsersSavedTracksItemEntityFromJson(json);
}

@freezed
class Track with _$Track {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Track({
    Album? album,
    List<TrackArtist>? artists,
    List<String>? availableMarkets,
    int? discNumber,
    int? durationMs,
    bool? explicit,
    ExternalIds? externalIds,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    bool? isPlayable,
    LinkedFrom? linkedFrom,
    Restrictions? restrictions,
    String? name,
    int? popularity,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
    bool? isLocal,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Album({
    String? albumType,
    int? totalTracks,
    List<String>? availableMarkets,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Image>? images,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    Restrictions? restrictions,
    String? type,
    String? uri,
    List<Copyright>? copyrights,
    ExternalIds? externalIds,
    List<String>? genres,
    String? label,
    int? popularity,
    String? albumGroup,
    List<AlbumArtist>? artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class AlbumArtist with _$AlbumArtist {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AlbumArtist({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  }) = _AlbumArtist;

  factory AlbumArtist.fromJson(Map<String, dynamic> json) =>
      _$AlbumArtistFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls({
    String? spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Copyright with _$Copyright {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Copyright({
    String? text,
    String? type,
  }) = _Copyright;

  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalIds({
    String? isrc,
    String? ean,
    String? upc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}

@freezed
class Image with _$Image {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Image({
    String? url,
    int? height,
    int? width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Restrictions with _$Restrictions {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Restrictions({
    String? reason,
  }) = _Restrictions;

  factory Restrictions.fromJson(Map<String, dynamic> json) =>
      _$RestrictionsFromJson(json);
}

@freezed
class TrackArtist with _$TrackArtist {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TrackArtist({
    ExternalUrls? externalUrls,
    Followers? followers,
    List<String>? genres,
    String? href,
    String? id,
    List<Image>? images,
    String? name,
    int? popularity,
    String? type,
    String? uri,
  }) = _TrackArtist;

  factory TrackArtist.fromJson(Map<String, dynamic> json) =>
      _$TrackArtistFromJson(json);
}

@freezed
class Followers with _$Followers {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Followers({
    String? href,
    int? total,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}

@freezed
class LinkedFrom with _$LinkedFrom {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LinkedFrom() = _LinkedFrom;

  factory LinkedFrom.fromJson(Map<String, dynamic> json) =>
      _$LinkedFromFromJson(json);
}
