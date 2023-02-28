import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/tracks_service.dart';

import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

enum Status { loading, completed, error }

class MusicPlaylistData {
  final String? id;
  final String? artists;
  final String? name;
  final String? imageUrl;

  MusicPlaylistData({
    required this.id,
    required this.artists,
    required this.name,
    required this.imageUrl,
  });

  MusicPlaylistData copyWith({
    String? id,
    String? artists,
    String? name,
    String? imageUrl,
  }) {
    return MusicPlaylistData(
      id: id ?? this.id,
      artists: artists ?? this.artists,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}

class MusicPlaylistRenderedData {
  Status status = Status.loading;
  List<MusicPlaylistData> music = <MusicPlaylistData>[];
}

class LikedMusicPlaylistViewModel extends ChangeNotifier {
  int offset = 0;
  bool isLoading = false;
  final _tracksService = TracksService();
  final data = MusicPlaylistRenderedData();

  LikedMusicPlaylistViewModel() {
    _loadDetails();
  }

  void _loadDetails() async {
    await _tracksService
        .getUsersSavedTracksData(market: 'ES', offset: offset, limit: 20)
        .then((value) => _addTracks(value))
        .onError((error, stackTrace) => data.status = Status.error);
    offset = offset + 20;
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addTracks(UsersSavedTracks? usersSavedTracks) async {
    if (usersSavedTracks == null) {
      return;
    }
    data.music.addAll(usersSavedTracks.items
        .map((e) => MusicPlaylistData(
              id: e.track?.id,
              artists: e.track?.artists?.first.name,
              name: e.track?.name,
              imageUrl: e.track?.album?.images?.first.url,
            ))
        .toList());
  }

  void showedMusicAtIndex(int index) {
    if (index < data.music.length - 1) return;

    _loadDetails();
  }
}
