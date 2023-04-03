import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracks.g.dart';

part 'tracks.freezed.dart';

@freezed
class Tracks with _$Tracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Tracks(
    String? href,
    List<Items>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
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
    bool? isLocal,
    String? name,
    int? popularity,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Album(
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
  ) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
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

@freezed
class ExternalIds with _$ExternalIds {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalIds(
    String? isrc,
  ) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}
