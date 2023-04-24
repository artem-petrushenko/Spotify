import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_model.freezed.dart';

part 'playlist_model.g.dart';

@freezed
class PlaylistModel with _$PlaylistModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PlaylistModel({
    bool? collaborative,
    String? description,
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    List<PlaylistModelImage>? images,
    String? name,
    Owner? owner,
    bool? public,
    String? snapshotId,
    Tracks? tracks,
    String? type,
    String? uri,
  }) = _PlaylistModel;

  factory PlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$PlaylistModelFromJson(json);
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
class PlaylistModelImage with _$PlaylistModelImage {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PlaylistModelImage({
    String? url,
    int? height,
    int? width,
  }) = _PlaylistModelImage;

  factory PlaylistModelImage.fromJson(Map<String, dynamic> json) =>
      _$PlaylistModelImageFromJson(json);
}

@freezed
class Owner with _$Owner {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Owner({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
    String? displayName,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class Tracks with _$Tracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Tracks({
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Item>? items,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class Item with _$Item {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Item({
    String? addedAt,
    AddedBy? addedBy,
    bool? isLocal,
    Track? track,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class AddedBy with _$AddedBy {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AddedBy({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
  }) = _AddedBy;

  factory AddedBy.fromJson(Map<String, dynamic> json) =>
      _$AddedByFromJson(json);
}

@freezed
class Track with _$Track {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Track({
    Album? album,
    List<Artist>? artists,
    List<String>? availableMarkets,
    int? discNumber,
    int? durationMs,
    bool? explicit,
    ExternalIds? externalIds,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    int? popularity,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
    bool? isLocal,
    bool? episode,
    bool? track,
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
    List<AlbumImage>? images,
    String? name,
    DateTime? releaseDate,
    String? releaseDatePrecision,
    String? type,
    String? uri,
    String? albumGroup,
    List<Artist>? artists,
    bool? isPlayable,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Artist({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class AlbumImage with _$AlbumImage {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AlbumImage({
    String? url,
    int? height,
    int? width,
  }) = _AlbumImage;

  factory AlbumImage.fromJson(Map<String, dynamic> json) =>
      _$AlbumImageFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalIds({
    String? isrc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}
