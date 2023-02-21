// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentUserProfile _$CurrentUserProfileFromJson(Map<String, dynamic> json) =>
    CurrentUserProfile(
      country: json['country'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      explicitContent: json['explicit_content'] == null
          ? null
          : ExplicitContent.fromJson(
              json['explicit_content'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      product: json['product'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$CurrentUserProfileToJson(CurrentUserProfile instance) =>
    <String, dynamic>{
      'country': instance.country,
      'display_name': instance.displayName,
      'email': instance.email,
      'explicit_content': instance.explicitContent,
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'product': instance.product,
      'type': instance.type,
      'uri': instance.uri,
    };

ExplicitContent _$ExplicitContentFromJson(Map<String, dynamic> json) =>
    ExplicitContent(
      filterEnabled: json['filter_enabled'] as bool?,
      filterLocked: json['filter_locked'] as bool?,
    );

Map<String, dynamic> _$ExplicitContentToJson(ExplicitContent instance) =>
    <String, dynamic>{
      'filter_enabled': instance.filterEnabled,
      'filter_locked': instance.filterLocked,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'] as String?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      url: json['url'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
