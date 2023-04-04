import 'package:freezed_annotation/freezed_annotation.dart';

part 'episodes.g.dart';

part 'episodes.freezed.dart';

@freezed
class Episodes with _$Episodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Episodes(
    String? href,
    List<ItemsEpisodes>? items,
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
class ItemsEpisodes with _$ItemsEpisodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsEpisodes(
    String? audioPreviewUrl,
    String? description,
    int? durationMs,
    bool? explicit,
    ExternalUrlsEpisodes? externalUrls,
    String? href,
    String? htmlDescription,
    String? id,
    List<ImagesEpisodes>? images,
    bool? isExternallyHosted,
    bool? isPlayable,
    String? language,
    List<String>? languages,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    ResumePointEpisodes? resumePoint,
    String? type,
    String? uri,
  ) = _ItemsEpisodes;

  factory ItemsEpisodes.fromJson(Map<String, dynamic> json) => _$ItemsEpisodesFromJson(json);
}

@freezed
class ExternalUrlsEpisodes with _$ExternalUrlsEpisodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsEpisodes(
    String? spotify,
  ) = _ExternalUrlsEpisodes;

  factory ExternalUrlsEpisodes.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsEpisodesFromJson(json);
}

@freezed
class ImagesEpisodes with _$ImagesEpisodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesEpisodes(
    int? height,
    String? url,
    int? width,
  ) = _ImagesEpisodes;

  factory ImagesEpisodes.fromJson(Map<String, dynamic> json) => _$ImagesEpisodesFromJson(json);
}

@freezed
class ResumePointEpisodes with _$ResumePointEpisodes {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ResumePointEpisodes(
    bool? fullyPlayed,
    int? resumePositionMs,
  ) = _ResumePointEpisodes;

  factory ResumePointEpisodes.fromJson(Map<String, dynamic> json) =>
      _$ResumePointEpisodesFromJson(json);
}
