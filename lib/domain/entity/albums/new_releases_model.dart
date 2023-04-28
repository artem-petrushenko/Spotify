import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_releases_model.freezed.dart';

part 'new_releases_model.g.dart';

@freezed
class NewReleasesModel with _$NewReleasesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewReleasesModel({
    Albums? albums,
  }) = _NewReleasesModel;

  factory NewReleasesModel.fromJson(Map<String, dynamic> json) =>
      _$NewReleasesModelFromJson(json);
}

@freezed
class Albums with _$Albums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Albums({
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Item>? items,
  }) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

@freezed
class Item with _$Item {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Item({
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
    List<Artist>? artists,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
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
