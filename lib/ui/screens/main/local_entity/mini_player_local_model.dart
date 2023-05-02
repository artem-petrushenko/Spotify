import 'package:freezed_annotation/freezed_annotation.dart';

part 'mini_player_local_model.g.dart';

part 'mini_player_local_model.freezed.dart';

@freezed
class MiniPlayerLocalModel with _$MiniPlayerLocalModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MiniPlayerLocalModel({
    final String? name,
    final String? artists,
    final String? image,
    final double? progressPercent,
    final bool? isPlaying,
  }) = _MiniPlayerLocalModel;

  factory MiniPlayerLocalModel.fromJson(Map<String, dynamic> json) =>
      _$MiniPlayerLocalModelFromJson(json);
}
