import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_user_profile.g.dart';

part 'current_user_profile.freezed.dart';

@freezed
class CurrentUserProfileModel with _$CurrentUserProfileModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CurrentUserProfileModel(
    String? country,
    String? displayName,
    String? email,
    ExplicitContent? explicitContent,
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    List<Images> images,
    String? product,
    String? type,
    String? uri,
  ) = _CurrentUserProfileModel;

  factory CurrentUserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentUserProfileModelFromJson(json);
}

@freezed
class ExplicitContent with _$ExplicitContent {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExplicitContent(
    bool? filterEnabled,
    bool? filterLocked,
  ) = _ExplicitContent;

  factory ExplicitContent.fromJson(Map<String, dynamic> json) =>
      _$ExplicitContentFromJson(json);
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

