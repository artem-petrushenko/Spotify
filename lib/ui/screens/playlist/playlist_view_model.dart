import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/entity/playlists/playlist_items_model.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_model.dart';
import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';

import 'package:spotify_client/domain/services/playlists/abstract_playlists_service.dart';
import 'package:spotify_client/domain/services/tracks/abstract_tracks_service.dart';

import 'package:spotify_client/config/router/router.dart';

enum Status { loading, completed, error }

class MediaLibraryRenderedData {
  Status status = Status.loading;
  PlaylistModel media = const PlaylistModel();
  PlaylistItemsModel playlistItemsModel = const PlaylistItemsModel();
  RecommendationsModel recommendationsModel = const RecommendationsModel();
}

class PlaylistViewModel extends ChangeNotifier {
  final String playlistID;
  String image;
  MediaLibraryRenderedData data = MediaLibraryRenderedData();

  PlaylistViewModel({
    required this.playlistID,
    required this.image,
  }) {
    _loadDetails();
  }

  static const double _openSliverAppBarHeight = 350.0;
  static const double _hideSliverAppBarHeight = 56.0;

  double get openSliverAppBarHeight => _openSliverAppBarHeight;

  double get hideSliverAppBarHeight => _hideSliverAppBarHeight;

  double get opacityAppBar => 1 - opacityFlexibleSpace;

  double get opacityFlexibleSpace {
    double opacity = 1.0;
    if (scrollController.hasClients) {
      double offset = scrollController.offset;
      if (offset < _openSliverAppBarHeight - _hideSliverAppBarHeight) {
        opacity = (_openSliverAppBarHeight - offset) / _openSliverAppBarHeight;
      } else {
        opacity = 0.0;
      }
    }
    return opacity;
  }

  late ScrollController scrollController;

  Future<void> _loadDetails() async {
    scrollController = ScrollController()
      ..addListener(() {
        notifyListeners();
      });

    await GetIt.instance<AbstractPlaylistsService>()
        .getPlaylist(playlistID: playlistID, market: 'ES')
        .then((value) => _addPlaylistData(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await GetIt.instance<AbstractPlaylistsService>()
        .getPlaylistItems(
            playlistID: playlistID, market: 'ES', limit: 20, offset: 0)
        .then((value) => _addPlaylistItemsData(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await GetIt.instance<AbstractTracksService>()
        .getRecommendations(
            seedArtists: '',
            seedGenres: '',
            seedTracks: data.playlistItemsModel.items
                    ?.map((e) => e.track?.id)
                    .toList()
                    .reversed
                    .take(5)
                    .join(',') ??'')
        .then((value) => _addRecommendationsModel(value))
        .onError((error, stackTrace) => data.status = Status.error);

    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addPlaylistData(PlaylistModel value) {
    data.media = value;
    image = value.images?.first.url ?? '';
  }

  void _addPlaylistItemsData(PlaylistItemsModel value) {
    data.playlistItemsModel = value;
  }

  void _addRecommendationsModel(RecommendationsModel value) {
    data.recommendationsModel = value;
  }

  void openTrack(String trackID, BuildContext context, String image) =>
      context.push(context.namedLocation(GoRouterNames.trackScreen,
          queryParams: <String, dynamic>{'trackID': trackID, 'image': image}));
}
