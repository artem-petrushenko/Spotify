import 'package:json_annotation/json_annotation.dart';

part 'current_user_profile.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CurrentUserProfile {
  String? country;
  String? displayName;
  String? email;
  ExplicitContent? explicitContent;
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  List<Images>? images;
  String? product;
  String? type;
  String? uri;

  CurrentUserProfile({
    required this.country,
    required this.displayName,
    required this.email,
    required this.explicitContent,
    required this.externalUrls,
    required this.followers,
    required this.href,
    required this.id,
    required this.images,
    required this.product,
    required this.type,
    required this.uri,
  });

  factory CurrentUserProfile.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserProfileFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentUserProfileToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ExplicitContent {
  bool? filterEnabled;
  bool? filterLocked;

  ExplicitContent({
    required this.filterEnabled,
    required this.filterLocked,
  });

  factory ExplicitContent.fromJson(Map<String, dynamic> json) =>
      _$ExplicitContentFromJson(json);

  Map<String, dynamic> toJson() => _$ExplicitContentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ExternalUrls {
  String? spotify;

  ExternalUrls({
    required this.spotify,
  });

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);
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

@JsonSerializable(fieldRename: FieldRename.snake)
class Images {
  String url;
  int height;
  int width;

  Images({
    required this.url,
    required this.height,
    required this.width,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
