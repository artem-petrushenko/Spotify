import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/services/albums_service.dart';
import 'package:spotify_client/domain/services/playlists_service.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

enum Status { loading, completed, error }

enum MediaType { likedPlaylist, playlists, albums }

class MediaData {
  final String? type;
  final String? name;
  final String? uri;
  final String? imageUrl;
  final MediaType mediaType;

  const MediaData({
    required this.type,
    required this.name,
    required this.uri,
    required this.imageUrl,
    required this.mediaType,
  });

  MediaData copyWith({
    String? type,
    String? name,
    String? uri,
    String? imageUrl,
    MediaType? mediaType,
  }) {
    return MediaData(
      type: type ?? this.type,
      name: name ?? this.name,
      uri: uri ?? this.uri,
      imageUrl: imageUrl ?? this.imageUrl,
      mediaType: mediaType ?? this.mediaType,
    );
  }
}

class MediaLibraryRenderedData {
  Status status = Status.loading;
  List<MediaData> media = <MediaData>[];
}

class MediaLibraryViewModel extends ChangeNotifier {
  MediaLibraryViewModel() {
    loadDetails();
  }

  bool _isGridCards = true;

  bool get isGridCards => _isGridCards;

  final _playlistsService = PlaylistsService();
  final _albumsService = AlbumsService();
  final data = MediaLibraryRenderedData();

  void setGridCard() {
    _isGridCards = !_isGridCards;
    notifyListeners();
  }

  void openUserProfile(BuildContext context) => Navigator.of(context)
      .pushNamed(MainNavigationRouteNames.userProfileScreen);

  void openMediaTypeScreen(BuildContext context, MediaData mediaData) {
    switch (mediaData.mediaType) {
      case MediaType.likedPlaylist:
        Navigator.of(context)
            .pushNamed(MainNavigationRouteNames.likedMusicPlaylistScreen);
        break;
      case MediaType.playlists:
        Navigator.of(context)
            .pushNamed(MainNavigationRouteNames.musicPlaylistScreen);
        break;
      case MediaType.albums:
        Navigator.of(context).pushNamed(MainNavigationRouteNames.albumScreen);
        break;
      default:
    }
  }

  void loadDetails() async {
    _addFavoriteAlbum();
    await _albumsService
        .getUsersSavedAlbums(market: 'ES', offset: 0)
        .then((value) => _addAlbums(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await _playlistsService
        .getCurrentUsersPlaylists(offset: 0)
        .then((value) => _addPlaylists(value))
        .onError((error, stackTrace) => data.status = Status.error);

    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addFavoriteAlbum() {
    data.media.add(
      const MediaData(
        mediaType: MediaType.likedPlaylist,
        type: 'playlist',
        name: 'Your favorite',
        uri: 'URI',
        imageUrl:
            'https://images.ctfassets.net/c1zhnszcah7h/5Iz8Hbv8IVXuMwhABKWbhu/92e4117131123a14e8dd895aa107c3d4/Square_-_Bringing_The_Spotify_Heart_to_Life_2x.png?w=1000&h=1000&q=96&fm=webp',
      ),
    );
  }

  void _addAlbums(UsersSavedAlbums? usersSavedAlbums) async {
    if (usersSavedAlbums == null) {
      return;
    }
    data.media.addAll(usersSavedAlbums.items
        .map((e) => MediaData(
              mediaType: MediaType.albums,
              type: e.album?.type,
              name: e.album?.name,
              uri: e.album?.uri,
              imageUrl: e.album?.images?.first.url,
            ))
        .toList());
  }

  void _addPlaylists(CurrentUsersPlaylists? currentUsersPlaylists) async {
    if (currentUsersPlaylists == null) {
      return;
    }
    data.media.addAll(currentUsersPlaylists.items
        .map((e) => MediaData(
              mediaType: MediaType.playlists,
              type: e.type,
              name: e.name,
              uri: e.uri,
              imageUrl: e.images?.first.url,
            ))
        .toList());
  }
}
