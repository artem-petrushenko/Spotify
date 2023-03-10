import 'package:json_annotation/json_annotation.dart';

part 'artists_albums.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArtistsAlbums {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<Items> items;

  ArtistsAlbums({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory ArtistsAlbums.fromJson(Map<String, dynamic> json) =>
      _$ArtistsAlbumsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsAlbumsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Items {
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
  List<Artists>? artists;

  Items({
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

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
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
class Artists {
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artists({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsToJson(this);
}
