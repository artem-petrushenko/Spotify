import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_saved_album.g.dart';

part 'users_saved_album.freezed.dart';

@freezed
class UsersSavedAlbumsModel with _$UsersSavedAlbumsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UsersSavedAlbumsModel(
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Items> items,
  ) = _UsersSavedAlbumsModel;

  factory UsersSavedAlbumsModel.fromJson(Map<String, dynamic> json) =>
      _$UsersSavedAlbumsModelFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    String? addedAt,
    Album? album,
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Album with _$Album {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Album(
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
  ) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrls(
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
