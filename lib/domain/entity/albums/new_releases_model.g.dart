// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_releases_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewReleasesModel _$$_NewReleasesModelFromJson(Map<String, dynamic> json) =>
    _$_NewReleasesModel(
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewReleasesModelToJson(_$_NewReleasesModel instance) =>
    <String, dynamic>{
      'albums': instance.albums?.toJson(),
    };

_$_Albums _$$_AlbumsFromJson(Map<String, dynamic> json) => _$_Albums(
      href: json['href'] as String?,
      limit: json['limit'] as int?,
      next: json['next'] as String?,
      offset: json['offset'] as int?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumsToJson(_$_Albums instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
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
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => Copyright.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'restrictions': instance.restrictions?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
      'copyrights': instance.copyrights?.map((e) => e.toJson()).toList(),
      'external_ids': instance.externalIds?.toJson(),
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
      'album_group': instance.albumGroup,
      'artists': instance.artists?.map((e) => e.toJson()).toList(),
    };

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
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

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Copyright _$$_CopyrightFromJson(Map<String, dynamic> json) => _$_Copyright(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_CopyrightToJson(_$_Copyright instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.type,
    };

_$_ExternalIds _$$_ExternalIdsFromJson(Map<String, dynamic> json) =>
    _$_ExternalIds(
      isrc: json['isrc'] as String?,
      ean: json['ean'] as String?,
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$$_ExternalIdsToJson(_$_ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
      'ean': instance.ean,
      'upc': instance.upc,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_Restrictions _$$_RestrictionsFromJson(Map<String, dynamic> json) =>
    _$_Restrictions(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_RestrictionsToJson(_$_Restrictions instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };
