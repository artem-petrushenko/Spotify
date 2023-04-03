import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlists.g.dart';

part 'playlists.freezed.dart';

@freezed
class Playlists with _$Playlists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Playlists(
    String? href,
    List<Items>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Playlists;

  factory Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    bool? collaborative,
    String? description,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    Owner? owner,
    bool? public,
    String? snapshotId,
    Tracks? tracks,
    String? type,
    String? uri,
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
class Owner with _$Owner {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Owner(
    String? displayName,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
  ) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

@freezed
class Tracks with _$Tracks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Tracks(
    String? href,
    int? total,
  ) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}
