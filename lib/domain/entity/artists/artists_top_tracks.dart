import 'package:json_annotation/json_annotation.dart';

part 'artists_top_tracks.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArtistsTopTracks {
  List<Tracks> tracks;

  ArtistsTopTracks({
    required this.tracks,
  });

  factory ArtistsTopTracks.fromJson(Map<String, dynamic> json) =>
      _$ArtistsTopTracksFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsTopTracksToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tracks {
  Album? album;
  List<Artists>? artists;
  List<String>? availableMarkets;
  int? discNumber;
  int? durationMs;
  bool? explicit;
  ExternalIds? externalIds;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  bool? isPlayable;
  Restrictions? restrictions;
  String? name;
  int? popularity;
  String? previewUrl;
  int? trackNumber;
  String? type;
  String? uri;
  bool? isLocal;

  Tracks({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isPlayable,
    this.restrictions,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Album {
  String? albumType;
  int? totalTracks;
  List<String>? availableMarkets;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  Restrictions? restrictions;
  String? type;
  String? uri;
  List<Copyrights>? copyrights;
  ExternalIds? externalIds;
  List<String>? genres;
  String? label;
  int? popularity;
  String? albumGroup;
  List<ArtistLightweight>? artists;

  Album({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.restrictions,
    this.type,
    this.uri,
    this.copyrights,
    this.externalIds,
    this.genres,
    this.label,
    this.popularity,
    this.albumGroup,
    this.artists,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ExternalUrls {
  String? spotify;

  ExternalUrls({
    this.spotify,
  });

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
    this.url,
    this.height,
    this.width,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Restrictions {
  String? reason;

  Restrictions({
    this.reason,
  });

  factory Restrictions.fromJson(Map<String, dynamic> json) =>
      _$RestrictionsFromJson(json);

  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Copyrights {
  String? text;
  String? type;

  Copyrights({
    this.text,
    this.type,
  });

  factory Copyrights.fromJson(Map<String, dynamic> json) =>
      _$CopyrightsFromJson(json);

  Map<String, dynamic> toJson() => _$CopyrightsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ExternalIds {
  String? isrc;
  String? ean;
  String? upc;

  ExternalIds({
    this.isrc,
    this.ean,
    this.upc,
  });

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ArtistLightweight {
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  ArtistLightweight({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory ArtistLightweight.fromJson(Map<String, dynamic> json) =>
      _$ArtistLightweightFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistLightweightToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Artists {
  ExternalUrls? externalUrls;
  Followers? followers;
  List<String>? genres;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  int? popularity;
  String? type;
  String? uri;

  Artists({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Followers {
  String? href;
  int? total;

  Followers({
    this.href,
    this.total,
  });

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}
