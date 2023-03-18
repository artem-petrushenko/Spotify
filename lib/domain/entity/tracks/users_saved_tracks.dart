import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_saved_tracks.g.dart';

part 'users_saved_tracks.freezed.dart';

@freezed
class UsersSavedTracksModel with _$UsersSavedTracksModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UsersSavedTracksModel(
    String href,
    int limit,
    String? next,
    int offset,
    String? previous,
    int total,
    List<Items> items,
  ) = _UsersSavedTracksModel;

  factory UsersSavedTracksModel.fromJson(Map<String, dynamic> json) =>
      _$UsersSavedTracksModelFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    String? addedAt,
    Track? track,
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Track with _$Track {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Track(
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
  ) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
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
    List<Artists>? artists,
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
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls(
    String? spotify,
  ) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
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
class Artists with _$Artists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Artists(
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}

@freezed
class ArtistsExtended with _$ArtistsExtended {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsExtended(
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
  ) = _ArtistsExtended;

  factory ArtistsExtended.fromJson(Map<String, dynamic> json) =>
      _$ArtistsExtendedFromJson(json);
}

@freezed
class Followers with _$Followers {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Followers(
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
  ) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}
