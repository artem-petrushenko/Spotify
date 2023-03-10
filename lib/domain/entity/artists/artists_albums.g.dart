// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_albums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistsAlbums _$ArtistsAlbumsFromJson(Map<String, dynamic> json) =>
    ArtistsAlbums(
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      offset: json['offset'] as int?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistsAlbumsToJson(ArtistsAlbums instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      albumType: json['album_type'] as String?,
      totalTracks: json['total_tracks'] as int?,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['release_date'] as String?,
      releaseDatePrecision: json['release_date_precision'] as String?,
      restrictions: json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      copyrights: (json['copyrights'] as List<dynamic>?)
          ?.map((e) => Copyrights.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      label: json['label'] as String?,
      popularity: json['popularity'] as int?,
      albumGroup: json['album_group'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artists.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'restrictions': instance.restrictions,
      'type': instance.type,
      'uri': instance.uri,
      'copyrights': instance.copyrights,
      'external_ids': instance.externalIds,
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
      'album_group': instance.albumGroup,
      'artists': instance.artists,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

Restrictions _$RestrictionsFromJson(Map<String, dynamic> json) => Restrictions(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$RestrictionsToJson(Restrictions instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

Copyrights _$CopyrightsFromJson(Map<String, dynamic> json) => Copyrights(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CopyrightsToJson(Copyrights instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) => ExternalIds(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$ExternalIdsToJson(ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

Artists _$ArtistsFromJson(Map<String, dynamic> json) => Artists(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ArtistsToJson(Artists instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };
