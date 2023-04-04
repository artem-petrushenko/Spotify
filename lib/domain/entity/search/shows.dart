import 'package:freezed_annotation/freezed_annotation.dart';

part 'shows.g.dart';

part 'shows.freezed.dart';

@freezed
class Shows with _$Shows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Shows(
    String? href,
    List<ItemsShows>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Shows;

  factory Shows.fromJson(Map<String, dynamic> json) => _$ShowsFromJson(json);
}

@freezed
class ItemsShows with _$ItemsShows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsShows(
    List<String>? availableMarkets,
    List<CopyrightShows>? copyrights,
    String? description,
    bool? explicit,
    ExternalUrlsShows? externalUrls,
    String? href,
    String? htmlDescription,
    String? id,
    List<ImagesShows>? images,
    bool? isExternallyHosted,
    List<String>? languages,
    String? mediaType,
    String? name,
    String? publisher,
    int? totalEpisodes,
    String? type,
    String? uri,
  ) = _ItemsShows;

  factory ItemsShows.fromJson(Map<String, dynamic> json) => _$ItemsShowsFromJson(json);
}

@freezed
class CopyrightShows with _$CopyrightShows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CopyrightShows(
    String? text,
    String? type,
  ) = _CopyrightShows;

  factory CopyrightShows.fromJson(Map<String, dynamic> json) =>
      _$CopyrightShowsFromJson(json);
}

@freezed
class ExternalUrlsShows with _$ExternalUrlsShows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsShows(
    String? spotify,
  ) = _ExternalUrlsShows;

  factory ExternalUrlsShows.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsShowsFromJson(json);
}

@freezed
class ImagesShows with _$ImagesShows {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesShows(
    int? height,
    String? url,
    int? width,
  ) = _ImagesShows;

  factory ImagesShows.fromJson(Map<String, dynamic> json) => _$ImagesShowsFromJson(json);
}
