// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_for_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchForItemModelImpl _$$SearchForItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchForItemModelImpl(
      json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
      json['artists'] == null
          ? null
          : Artists.fromJson(json['artists'] as Map<String, dynamic>),
      json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      json['playlists'] == null
          ? null
          : Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
      json['shows'] == null
          ? null
          : Shows.fromJson(json['shows'] as Map<String, dynamic>),
      json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      json['audiobooks'] == null
          ? null
          : Audiobooks.fromJson(json['audiobooks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchForItemModelImplToJson(
        _$SearchForItemModelImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums?.toJson(),
      'artists': instance.artists?.toJson(),
      'tracks': instance.tracks?.toJson(),
      'playlists': instance.playlists?.toJson(),
      'shows': instance.shows?.toJson(),
      'episodes': instance.episodes?.toJson(),
      'audiobooks': instance.audiobooks?.toJson(),
    };
