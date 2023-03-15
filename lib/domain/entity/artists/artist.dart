import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';

part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Artist(
    List<String> genres,
    ExternalUrls externalUrls,
    Followers followers,
    String href,
    String id,
    List<Images> images,
    String name,
    int popularity,
    String type,
    String uri,
  ) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls(
    String spotify,
  ) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Followers with _$Followers {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Followers(
    String? href,
    int total,
  ) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}

@freezed
class Images with _$Images {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Images({
    required String url,
    required int height,
    required int width,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
