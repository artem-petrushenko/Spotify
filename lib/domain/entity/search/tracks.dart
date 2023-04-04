import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracks.g.dart';

part 'tracks.freezed.dart';

@freezed
class Tracks with _$Tracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Tracks(
    String? href,
    List<ItemsTracks>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class ItemsTracks with _$ItemsTracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsTracks(
    Album? album,
    List<ArtistsTracks>? artists,
    List<String>? availableMarkets,
    int? discNumber,
    int? durationMs,
    bool? explicit,
    ExternalIds? externalIds,
    ExternalUrlsTracks? externalUrls,
    String? href,
    String? id,
    bool? isLocal,
    String? name,
    int? popularity,
    String? previewUrl,
    int? trackNumber,
    String? type,
    String? uri,
  ) = _ItemsTracks;

  factory ItemsTracks.fromJson(Map<String, dynamic> json) => _$ItemsTracksFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Album(
    String? albumGroup,
    String? albumType,
    List<ArtistsTracks>? artists,
    List<String>? availableMarkets,
    ExternalUrlsTracks? externalUrls,
    String? href,
    String? id,
    List<ImagesTracks>? images,
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
class ArtistsTracks with _$ArtistsTracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsTracks(
    ExternalUrlsTracks? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _ArtistsTracks;

  factory ArtistsTracks.fromJson(Map<String, dynamic> json) =>
      _$ArtistsTracksFromJson(json);
}

@freezed
class ExternalUrlsTracks with _$ExternalUrlsTracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsTracks(
    String? spotify,
  ) = _ExternalUrlsTracks;

  factory ExternalUrlsTracks.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsTracksFromJson(json);
}

@freezed
class ImagesTracks with _$ImagesTracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesTracks(
    int? height,
    String? url,
    int? width,
  ) = _ImagesTracks;

  factory ImagesTracks.fromJson(Map<String, dynamic> json) => _$ImagesTracksFromJson(json);
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
