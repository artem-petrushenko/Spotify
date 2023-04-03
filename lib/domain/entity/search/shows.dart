import 'package:freezed_annotation/freezed_annotation.dart';

part 'shows.g.dart';

part 'shows.freezed.dart';

@freezed
class Shows with _$Shows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Shows(
    String? href,
    List<Items>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Shows;

  factory Shows.fromJson(Map<String, dynamic> json) => _$ShowsFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    List<String>? availableMarkets,
    List<Copyright>? copyrights,
    String? description,
    bool? explicit,
    ExternalUrls? externalUrls,
    String? href,
    String? htmlDescription,
    String? id,
    List<Images>? images,
    bool? isExternallyHosted,
    List<String>? languages,
    String? mediaType,
    String? name,
    String? publisher,
    int? totalEpisodes,
    String? type,
    String? uri,
  ) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class Copyright with _$Copyright {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Copyright(
    String? text,
    String? type,
  ) = _Copyright;

  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);
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
    int? height,
    String? url,
    int? width,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
