// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mini_player_local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiniPlayerLocalModel _$$_MiniPlayerLocalModelFromJson(
        Map<String, dynamic> json) =>
    _$_MiniPlayerLocalModel(
      name: json['name'] as String?,
      artists: json['artists'] as String?,
      image: json['image'] as String?,
      progressPercent: (json['progress_percent'] as num?)?.toDouble(),
      isPlaying: json['is_playing'] as bool?,
    );

Map<String, dynamic> _$$_MiniPlayerLocalModelToJson(
        _$_MiniPlayerLocalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'artists': instance.artists,
      'image': instance.image,
      'progress_percent': instance.progressPercent,
      'is_playing': instance.isPlaying,
    };
