import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:spotify_client/domain/entity/search/albums.dart' as albums;
import 'package:spotify_client/domain/entity/search/artists.dart' as artists;
import 'package:spotify_client/domain/entity/search/audiobooks.dart'
    as audiobooks;
import 'package:spotify_client/domain/entity/search/episodes.dart' as episodes;
import 'package:spotify_client/domain/entity/search/playlists.dart'
    as playlists;
import 'package:spotify_client/domain/entity/search/shows.dart' as shows;
import 'package:spotify_client/domain/entity/search/tracks.dart' as tracks;

part 'search_for_item.g.dart';

part 'search_for_item.freezed.dart';

@freezed
class SearchForItemModel with _$SearchForItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchForItemModel(
    albums.Albums? albums,
    artists.Artists? artists,
    tracks.Tracks? tracks,
    playlists.Playlists? playlists,
    shows.Shows? shows,
    episodes.Episodes? episodes,
    audiobooks.Audiobooks? audiobooks,
  ) = _SearchForItemModel;

  factory SearchForItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchForItemModelFromJson(json);
}
