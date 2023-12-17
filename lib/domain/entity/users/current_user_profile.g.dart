// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentUserProfileModelImpl _$$CurrentUserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentUserProfileModelImpl(
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

Map<String, dynamic> _$$CurrentUserProfileModelImplToJson(
        _$CurrentUserProfileModelImpl instance) =>
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

_$ExplicitContentImpl _$$ExplicitContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplicitContentImpl(
      json['filter_enabled'] as bool?,
      json['filter_locked'] as bool?,
    );

Map<String, dynamic> _$$ExplicitContentImplToJson(
        _$ExplicitContentImpl instance) =>
    <String, dynamic>{
      'filter_enabled': instance.filterEnabled,
      'filter_locked': instance.filterLocked,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      json['spotify'] as String?,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$FollowersImpl _$$FollowersImplFromJson(Map<String, dynamic> json) =>
    _$FollowersImpl(
      json['href'] as String?,
      json['total'] as int?,
    );

Map<String, dynamic> _$$FollowersImplToJson(_$FollowersImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      json['url'] as String?,
      json['height'] as int?,
      json['width'] as int?,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
