import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_users_playlists.g.dart';

part 'current_users_playlists.freezed.dart';

@freezed
class CurrentUsersPlaylistsModel with _$CurrentUsersPlaylistsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CurrentUsersPlaylistsModel(
    String? href,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
    List<Items> items,
  ) = _CurrentUsersPlaylistsModel;

  factory CurrentUsersPlaylistsModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentUsersPlaylistsModelFromJson(json);
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
    Followers? tracks,
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
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? type,
    String? uri,
    String? displayName,
  ) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
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
