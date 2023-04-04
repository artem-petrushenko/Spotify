import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlists.g.dart';

part 'playlists.freezed.dart';

@freezed
class Playlists with _$Playlists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Playlists(
    String? href,
    List<ItemsPlaylists>? items,
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
class ItemsPlaylists with _$ItemsPlaylists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsPlaylists(
    bool? collaborative,
    String? description,
    ExternalUrlsPlaylists? externalUrls,
    String? href,
    String? id,
    List<ImagesPlaylists>? images,
    String? name,
    OwnerPlaylists? owner,
    bool? public,
    String? snapshotId,
    TracksPlaylists? tracks,
    String? type,
    String? uri,
  ) = _ItemsPlaylists;

  factory ItemsPlaylists.fromJson(Map<String, dynamic> json) => _$ItemsPlaylistsFromJson(json);
}

@freezed
class ExternalUrlsPlaylists with _$ExternalUrlsPlaylists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ExternalUrlsPlaylists(
    String? spotify,
  ) = _ExternalUrlsPlaylists;

  factory ExternalUrlsPlaylists.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsPlaylistsFromJson(json);
}

@freezed
class ImagesPlaylists with _$ImagesPlaylists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImagesPlaylists(
    String? url,
    int? height,
    int? width,
  ) = _ImagesPlaylists;

  factory ImagesPlaylists.fromJson(Map<String, dynamic> json) => _$ImagesPlaylistsFromJson(json);
}

@freezed
class OwnerPlaylists with _$OwnerPlaylists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OwnerPlaylists(
    String? displayName,
    ExternalUrlsPlaylists? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
  ) = _OwnerPlaylists;

  factory OwnerPlaylists.fromJson(Map<String, dynamic> json) => _$OwnerPlaylistsFromJson(json);
}

@freezed
class TracksPlaylists with _$TracksPlaylists {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TracksPlaylists(
    String? href,
    int? total,
  ) = _TracksPlaylists;

  factory TracksPlaylists.fromJson(Map<String, dynamic> json) => _$TracksPlaylistsFromJson(json);
}
