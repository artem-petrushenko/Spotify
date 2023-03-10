import 'package:json_annotation/json_annotation.dart';

part 'artists_related_artists.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArtistsRelatedArtists {
  List<Artists> artists;

  ArtistsRelatedArtists({
    required this.artists,
  });

  factory ArtistsRelatedArtists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsRelatedArtistsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsRelatedArtistsToJson(this);
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
