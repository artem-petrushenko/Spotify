import 'package:freezed_annotation/freezed_annotation.dart';

part 'albums.g.dart';

part 'albums.freezed.dart';

@freezed
class Albums with _$Albums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Albums(
    String? href,
    List<ItemsAlbum>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Albums;

  factory Albums.fromJson(Map<String, dynamic> json) => _$AlbumsFromJson(json);
}

@freezed
class ItemsAlbum with _$ItemsAlbum {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsAlbum(
    String? albumGroup,
    String? albumType,
    List<ArtistsAlbums>? artists,
    List<String>? availableMarkets,
    ExternalUrlsAlbums? externalUrls,
    String? href,
    String? id,
    List<ImagesAlbums>? images,
    bool? isPlayable,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    int? totalTracks,
    String? type,
    String? uri,
  ) = _ItemsAlbumAlbums;

  factory ItemsAlbum.fromJson(Map<String, dynamic> json) => _$ItemsAlbumFromJson(json);
}

@freezed
class ArtistsAlbums with _$ArtistsAlbums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsAlbums(
    ExternalUrlsAlbums? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  ) = _ArtistsAlbums;

  factory ArtistsAlbums.fromJson(Map<String, dynamic> json) =>
      _$ArtistsAlbumsFromJson(json);
}

@freezed
class ExternalUrlsAlbums with _$ExternalUrlsAlbums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsAlbums(
    String? spotify,
  ) = _ExternalUrlsAlbums;

  factory ExternalUrlsAlbums.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsAlbumsFromJson(json);
}

@freezed
class ImagesAlbums with _$ImagesAlbums {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesAlbums(
    int? height,
    String? url,
    int? width,
  ) = _ImagesAlbums;

  factory ImagesAlbums.fromJson(Map<String, dynamic> json) => _$ImagesAlbumsFromJson(json);
}
