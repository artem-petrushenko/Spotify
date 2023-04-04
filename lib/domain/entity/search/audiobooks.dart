import 'package:freezed_annotation/freezed_annotation.dart';

part 'audiobooks.g.dart';

part 'audiobooks.freezed.dart';

@freezed
class Audiobooks with _$Audiobooks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Audiobooks(
    String? href,
    List<ItemsAudiobooks>? items,
    int? limit,
    String? next,
    int? offset,
    String? previous,
    int? total,
  ) = _Audiobooks;

  factory Audiobooks.fromJson(Map<String, dynamic> json) =>
      _$AudiobooksFromJson(json);
}

@freezed
class ItemsAudiobooks with _$ItemsAudiobooks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ItemsAudiobooks() = _ItemsAudiobooks;

  factory ItemsAudiobooks.fromJson(Map<String, dynamic> json) => _$ItemsAudiobooksFromJson(json);
}
