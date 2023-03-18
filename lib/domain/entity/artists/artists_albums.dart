import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists_albums.freezed.dart';

part 'artists_albums.g.dart';

@freezed
class ArtistsAlbumsModel with _$ArtistsAlbumsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsAlbumsModel(
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Items> items,
  ) = _ArtistsAlbumsModel;

  factory ArtistsAlbumsModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistsAlbumsModelFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
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
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
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
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}
