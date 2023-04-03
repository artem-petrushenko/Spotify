import 'package:freezed_annotation/freezed_annotation.dart';

part 'albums.g.dart';

part 'albums.freezed.dart';

@freezed
class Albums with _$Albums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Albums(
    String? href,
    List<Items>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    String? albumGroup,
    String? albumType,
    List<Artists>? artists,
    List<String>? availableMarkets,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    bool? isPlayable,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    int? totalTracks,
    String? type,
    String? uri,
  ) = _ItemsAlbums;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
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
    int? height,
    String? url,
    int? width,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
