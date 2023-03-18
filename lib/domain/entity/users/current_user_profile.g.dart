// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentUserProfileModel _$$_CurrentUserProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentUserProfileModel(
      json['country'] as String?,
      json['display_name'] as String?,
      json['email'] as String?,
      json['explicit_content'] == null
          ? null
          : ExplicitContent.fromJson(
              json['explicit_content'] as Map<String, dynamic>),
      json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      json['href'] as String?,
      json['id'] as String?,
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['product'] as String?,
      json['type'] as String?,
      json['uri'] as String?,
    );

Map<String, dynamic> _$$_CurrentUserProfileModelToJson(
        _$_CurrentUserProfileModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'display_name': instance.displayName,
      'email': instance.email,
      'explicit_content': instance.explicitContent?.toJson(),
      'external_urls': instance.externalUrls?.toJson(),
      'followers': instance.followers?.toJson(),
      'href': instance.href,
      'id': instance.id,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'product': instance.product,
      'type': instance.type,
      'uri': instance.uri,
    };

_$_ExplicitContent _$$_ExplicitContentFromJson(Map<String, dynamic> json) =>
    _$_ExplicitContent(
      json['filter_enabled'] as bool?,
      json['filter_locked'] as bool?,
    );

Map<String, dynamic> _$$_ExplicitContentToJson(_$_ExplicitContent instance) =>
    <String, dynamic>{
      'filter_enabled': instance.filterEnabled,
      'filter_locked': instance.filterLocked,
    };

_$_ExternalUrls _$$_ExternalUrlsFromJson(Map<String, dynamic> json) =>
    _$_ExternalUrls(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$_ExternalUrlsToJson(_$_ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$_Followers _$$_FollowersFromJson(Map<String, dynamic> json) => _$_Followers(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$_FollowersToJson(_$_Followers instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
