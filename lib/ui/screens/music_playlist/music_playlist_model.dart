import 'package:flutter/cupertino.dart';
import 'package:spotify_client/domain/services/tracks_service.dart';

import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

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
  bool isLoading = true;
  List<MusicPlaylistData> music = <MusicPlaylistData>[];
// MusicPlaylistData musicPlaylistData = MusicPlaylistData(
//   id: '',
//   artists: '',
//   name: '',
// );
}

class MusicPlaylistModel extends ChangeNotifier {
  final _tracksService = TracksService();
  final data = MusicPlaylistRenderedData();

  MusicPlaylistModel() {
    _loadDetails();
  }

  void _loadDetails() async {
    final musicPlaylistData = await _tracksService.getUsersSavedTracksData(0);
    _updateData(musicPlaylistData);
  }

  void _updateData(UsersSavedTracks? musicPlaylistData) {
    data.isLoading = musicPlaylistData == null;
    if (musicPlaylistData == null) {
      notifyListeners();
      return;
    }
    data.music = musicPlaylistData.items.map((e) => _makeRowData(e)).toList();
    notifyListeners();
  }

  MusicPlaylistData _makeRowData(Items e) {
    return MusicPlaylistData(
        id: e.track?.id,
        artists: e.track?.artists?.first.name,
        name: e.track?.name,
        imageUrl: e.track?.album?.images?.last.url);
  }
}
