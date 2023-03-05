import 'package:json_annotation/json_annotation.dart';

part 'several_albums.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SeveralAlbums {
  List<Albums>? albums;

  SeveralAlbums({
    required this.albums,
  });

  factory SeveralAlbums.fromJson(Map<String, dynamic> json) =>
      _$SeveralAlbumsFromJson(json);

  Map<String, dynamic> toJson() => _$SeveralAlbumsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Albums {
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
  List<Artists>? artists;
  Tracks? tracks;

  Albums({
    required this.albumType,
    required this.totalTracks,
    required this.availableMarkets,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.releaseDatePrecision,
    required this.restrictions,
    required this.type,
    required this.uri,
    required this.copyrights,
    required this.externalIds,
    required this.genres,
    required this.label,
    required this.popularity,
    required this.artists,
    required this.tracks,
  });

  factory Albums.fromJson(Map<String, dynamic> json) =>
      _$AlbumsFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumsToJson(this);
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
class Images {
  String? url;
  int? height;
  int? width;

  Images({
    required this.url,
    required this.height,
    required this.width,
  });

  factory Images.fromJson(Map<String, dynamic> json) =>
      _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Restrictions {
  String? reason;

  Restrictions({required this.reason});

  factory Restrictions.fromJson(Map<String, dynamic> json) =>
      _$RestrictionsFromJson(json);

  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Copyrights {
  String? text;
  String? type;

  Copyrights({
    required this.text,
    required this.type,
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
    required this.isrc,
    required this.ean,
    required this.upc,
  });

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
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
    required this.externalUrls,
    required this.followers,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.popularity,
    required this.type,
    required this.uri,
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
    required this.href,
    required this.total,
  });

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tracks {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<Items>? items;

  Tracks({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) =>
      _$TracksFromJson(json);

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Items {
  List<ArtistsSupport>? artists;
  List<String>? availableMarkets;
  int? discNumber;
  int? durationMs;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  bool? isPlayable;
  LinkedFrom? linkedFrom;
  Restrictions? restrictions;
  String? name;
  String? previewUrl;
  int? trackNumber;
  String? type;
  String? uri;
  bool? isLocal;

  Items({
    required this.artists,
    required this.availableMarkets,
    required this.discNumber,
    required this.durationMs,
    required this.explicit,
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.isPlayable,
    required this.linkedFrom,
    required this.restrictions,
    required this.name,
    required this.previewUrl,
    required this.trackNumber,
    required this.type,
    required this.uri,
    required this.isLocal,
  });

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ArtistsSupport {
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  ArtistsSupport({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.name,
    required this.type,
    required this.uri,
  });

  factory ArtistsSupport.fromJson(Map<String, dynamic> json) =>
      _$ArtistsSupportFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistsSupportToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LinkedFrom {
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? type;
  String? uri;

  LinkedFrom({
    required this.externalUrls,
    required this.href,
    required this.id,
    required this.type,
    required this.uri,
  });

  factory LinkedFrom.fromJson(Map<String, dynamic> json) =>
      _$LinkedFromFromJson(json);

  Map<String, dynamic> toJson() => _$LinkedFromToJson(this);
}
