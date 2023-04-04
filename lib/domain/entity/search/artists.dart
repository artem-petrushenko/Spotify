import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists.g.dart';

part 'artists.freezed.dart';

@freezed
class Artists with _$Artists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Artists(
    String? href,
    List<ItemsArtists>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}

@freezed
class ItemsArtists with _$ItemsArtists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsArtists(
    ExternalUrlsArtists? externalUrls,
    FollowersArtists? followers,
    List<String>? genres,
    String? href,
    String? id,
    List<ImagesArtists>? images,
    String? name,
    int? popularity,
    String? type,
    String? uri,
  ) = _ItemsArtists;

  factory ItemsArtists.fromJson(Map<String, dynamic> json) => _$ItemsArtistsFromJson(json);
}

@freezed
class ExternalUrlsArtists with _$ExternalUrlsArtists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsArtists(
    String? spotify,
  ) = _ExternalUrlsArtists;

  factory ExternalUrlsArtists.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsArtistsFromJson(json);
}

@freezed
class FollowersArtists with _$FollowersArtists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FollowersArtists(
    String? href,
    int? total,
  ) = _FollowersArtists;

  factory FollowersArtists.fromJson(Map<String, dynamic> json) =>
      _$FollowersArtistsFromJson(json);
}

@freezed
class ImagesArtists with _$ImagesArtists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesArtists(
    int? height,
    String? url,
    int? width,
  ) = _ImagesArtists;

  factory ImagesArtists.fromJson(Map<String, dynamic> json) => _$ImagesArtistsFromJson(json);
}
