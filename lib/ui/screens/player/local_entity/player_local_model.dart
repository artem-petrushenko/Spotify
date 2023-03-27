import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_local_model.g.dart';

part 'player_local_model.freezed.dart';

@freezed
class PlayerLocalModel with _$PlayerLocalModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PlayerLocalModel({
    final String? name,
    final String? artists,
    final String? image,
    final double? progressMs,
    final double? durationMs,
    final bool? shuffleState,
    final bool? isPlaying,
    final String? repeatState,
  }) = _PlayerLocalModel;

  factory PlayerLocalModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerLocalModelFromJson(json);
}
