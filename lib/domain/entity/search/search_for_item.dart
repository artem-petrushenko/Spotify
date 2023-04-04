import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:spotify_client/domain/entity/search/barrel_models.dart';

part 'search_for_item.g.dart';

part 'search_for_item.freezed.dart';

@freezed
class SearchForItemModel with _$SearchForItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchForItemModel(
    Albums? albums,
    Artists? artists,
    Tracks? tracks,
    Playlists? playlists,
    Shows? shows,
    Episodes? episodes,
    Audiobooks? audiobooks,
  ) = _SearchForItemModel;

  factory SearchForItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchForItemModelFromJson(json);
}
