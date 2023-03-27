// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerLocalModel _$$_PlayerLocalModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerLocalModel(
      name: json['name'] as String?,
      artists: json['artists'] as String?,
      image: json['image'] as String?,
      progressMs: (json['progress_ms'] as num?)?.toDouble(),
      durationMs: (json['duration_ms'] as num?)?.toDouble(),
      shuffleState: json['shuffle_state'] as bool?,
      isPlaying: json['is_playing'] as bool?,
      repeatState: json['repeat_state'] as String?,
    );

Map<String, dynamic> _$$_PlayerLocalModelToJson(_$_PlayerLocalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'artists': instance.artists,
      'image': instance.image,
      'progress_ms': instance.progressMs,
      'duration_ms': instance.durationMs,
      'shuffle_state': instance.shuffleState,
      'is_playing': instance.isPlaying,
      'repeat_state': instance.repeatState,
    };
