import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists_related_artists.freezed.dart';

part 'artists_related_artists.g.dart';

@freezed
class ArtistsRelatedArtistsModel with _$ArtistsRelatedArtistsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ArtistsRelatedArtistsModel(
    List<Artists> artists,
  ) = _ArtistsRelatedArtistsModel;

  factory ArtistsRelatedArtistsModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistsRelatedArtistsModelFromJson(json);
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
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls(
    String? spotify,
  ) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
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
class Images with _$Images {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Images(
    String? url,
    int? height,
    int? width,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
