import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';

part 'album.g.dart';

@freezed
class AlbumModel with _$AlbumModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AlbumModel(
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
    List<Artists>? artists,
    Tracks? tracks,
  ) = _AlbumModel;

  factory AlbumModel.fromJson(Map<String, dynamic> json) => _$AlbumModelFromJson(json);
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
class Tracks with _$Tracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Tracks(
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Items>? items,
  ) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    List<ArtistsItems>? artists,
    List<String>? availableMarkets,
    int? discNumber,
    int? durationMs,
    bool? explicit,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    bool? isPlayable,
    LinkedFrom? linkedFrom,
    Restrictions? restrictions,
    String? name,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
    bool? isLocal,
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class ArtistsItems with _$ArtistsItems {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsItems(
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _ArtistsItems;

  factory ArtistsItems.fromJson(Map<String, dynamic> json) =>
      _$ArtistsItemsFromJson(json);
}

@freezed
class LinkedFrom with _$LinkedFrom {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LinkedFrom(
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
  ) = _LinkedFrom;

  factory LinkedFrom.fromJson(Map<String, dynamic> json) =>
      _$LinkedFromFromJson(json);
}
