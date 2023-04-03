// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episodes _$$_EpisodesFromJson(Map<String, dynamic> json) => _$_Episodes(
      json['href'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['limit'] as int?,
      json['next'] as String?,
      json['offset'] as int?,
      json['previous'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_EpisodesToJson(_$_Episodes instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      json['audio_preview_url'] as String?,
      json['description'] as String?,
      json['duration_ms'] as int?,
      json['explicit'] as bool?,
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['href'] as String?,
      json['html_description'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['is_externally_hosted'] as bool?,
      json['is_playable'] as bool?,
      json['language'] as String?,
      (json['languages'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['name'] as String?,
      json['release_date'] as String?,
      json['release_date_precision'] as String?,
      json['resume_point'] == null
          ? null
          : ResumePoint.fromJson(json['resume_point'] as Map<String, dynamic>),
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'audio_preview_url': instance.audioPreviewUrl,
      'description': instance.description,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls?.toJson(),
      'href': instance.href,
      'html_description': instance.htmlDescription,
      'id': instance.id,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'is_externally_hosted': instance.isExternallyHosted,
      'is_playable': instance.isPlayable,
      'language': instance.language,
      'languages': instance.languages,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'resume_point': instance.resumePoint?.toJson(),
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      json['height'] as int?,
      json['url'] as String?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };

_$_ResumePoint _$$_ResumePointFromJson(Map<String, dynamic> json) =>
    _$_ResumePoint(
      json['fully_played'] as bool?,
      json['resume_position_ms'] as int?,
    );

Map<String, dynamic> _$$_ResumePointToJson(_$_ResumePoint instance) =>
    <String, dynamic>{
      'fully_played': instance.fullyPlayed,
      'resume_position_ms': instance.resumePositionMs,
    };
