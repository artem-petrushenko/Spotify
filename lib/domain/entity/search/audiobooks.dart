import 'package:freezed_annotation/freezed_annotation.dart';

part 'audiobooks.g.dart';

part 'audiobooks.freezed.dart';

@freezed
class Audiobooks with _$Audiobooks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Audiobooks(
    String? href,
    List<Items>? items,
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
class Items with _$Items {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Items() = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
