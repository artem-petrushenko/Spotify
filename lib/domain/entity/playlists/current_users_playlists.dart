import 'package:json_annotation/json_annotation.dart';

part 'current_users_playlists.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CurrentUsersPlaylists {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<Items> items;

  CurrentUsersPlaylists({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory CurrentUsersPlaylists.fromJson(Map<String, dynamic> json) =>
      _$CurrentUsersPlaylistsFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUsersPlaylistsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Items {
  bool? collaborative;
  String? description;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  Owner? owner;
  bool? public;
  String? snapshotId;
  Followers? tracks;
  String? type;
  String? uri;

  Items({
    required this.collaborative,
    required this.description,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.owner,
    required this.public,
    required this.snapshotId,
    required this.tracks,
    required this.type,
    required this.uri,
  });

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ExternalUrls {
  String? spotify;

  ExternalUrls({required this.spotify});

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Images {
  String? url;
  int? height;
  int? width;

  Images({
    required this.url,
    required this.height,
    required this.width,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Owner {
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  String? type;
  String? uri;
  String? displayName;

  Owner({
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
    required this.displayName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Followers {
  String? href;
  int? total;

  Followers({
    required this.href,
    required this.total,
  });

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}
