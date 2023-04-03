import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.g.dart';

part 'episodes.freezed.dart';

@freezed
class Episodes with _$Episodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Episodes(
    String? href,
    List<Items>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Episodes;

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}

@freezed
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items(
    String? audioPreviewUrl,
    String? description,
    int? durationMs,
    bool? explicit,
    ExternalUrls? externalUrls,
    String? href,
    String? htmlDescription,
    String? id,
    List<Images>? images,
    bool? isExternallyHosted,
    bool? isPlayable,
    String? language,
    List<String>? languages,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    ResumePoint? resumePoint,
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
    int? height,
    String? url,
    int? width,
  ) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class ResumePoint with _$ResumePoint {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ResumePoint(
    bool? fullyPlayed,
    int? resumePositionMs,
  ) = _ResumePoint;

  factory ResumePoint.fromJson(Map<String, dynamic> json) =>
      _$ResumePointFromJson(json);
}
