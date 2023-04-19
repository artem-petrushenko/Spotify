import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/services/playlists_service.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';

import 'package:spotify_client/domain/services/artists_service.dart';
import 'package:spotify_client/domain/services/player_service.dart';
import 'package:spotify_client/domain/services/tracks_service.dart';

enum Status { loading, completed, error }

class ArtistData {
  final String? id;
  final int? followers;
  final List<String> genres;
  final String? image;
  final String? name;
  final String? popularity;
  final String? contextUri;

  const ArtistData({
    required this.id,
    required this.followers,
    required this.genres,
    required this.image,
    required this.name,
    required this.popularity,
    required this.contextUri,
  });

  ArtistData copyWith({
    String? id,
    int? followers,
    List<String>? genres,
    String? image,
    String? name,
    String? popularity,
    String? contextUri,
  }) {
    return ArtistData(
      id: id ?? this.id,
      followers: followers ?? this.followers,
      genres: genres ?? this.genres,
      image: image ?? this.image,
      name: name ?? this.name,
      popularity: popularity ?? this.popularity,
      contextUri: contextUri ?? this.contextUri,
    );
  }
}

class ArtistsTopTracksData {
  final String? id;
  final String? name;
  final String? image;
  final String? artists;
  final String? contextUri;

  const ArtistsTopTracksData({
    required this.id,
    required this.name,
    required this.image,
    required this.artists,
    required this.contextUri,
  });

  ArtistsTopTracksData copyWith({
    String? id,
    String? name,
    String? image,
    String? artists,
    String? contextUri,
  }) {
    return ArtistsTopTracksData(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      artists: artists ?? this.artists,
      contextUri: contextUri ?? this.contextUri,
    );
  }
}

class ArtistsRelatedArtistsData {
  final String? id;
  final String? name;
  final String? image;

  const ArtistsRelatedArtistsData({
    required this.id,
    required this.name,
    required this.image,
  });

  ArtistsRelatedArtistsData copyWith({
    String? id,
    String? name,
    String? image,
  }) {
    return ArtistsRelatedArtistsData(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }
}

class ArtistsAlbumsData {
  final String? id;
  final String? name;
  final String? image;
  final String? year;
  final String? type;

  const ArtistsAlbumsData({
    required this.id,
    required this.name,
    required this.image,
    required this.year,
    required this.type,
  });

  ArtistsAlbumsData copyWith({
    String? id,
    String? name,
    String? image,
    String? year,
    String? type,
  }) {
    return ArtistsAlbumsData(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      year: year ?? this.year,
      type: type ?? this.type,
    );
  }
}

class ArtistRenderedData {
  Status status = Status.loading;

  ArtistData artist = const ArtistData(
    id: '',
    followers: null,
    genres: [],
    image: '',
    name: '',
    popularity: null,
    contextUri: '',
  );
  List<ArtistsTopTracksData> artistsTopTracks = const [];
  List<ArtistsRelatedArtistsData> artistsRelatedArtists = const [];
  List<ArtistsAlbumsData> artistsAlbums = const [];
}

class ArtistViewModel extends ChangeNotifier {
  final String artistId;

  ArtistViewModel({required this.artistId}) {
    loadDetails();
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
  final data = ArtistRenderedData();
  final _artistService = ArtistService();
  final _playerService = PlayerService();
  final _tracksService = TracksService();
  final _playlistsService = PlaylistsService();

  Future<void> loadDetails() async {
    scrollController = ScrollController()
      ..addListener(() {
        notifyListeners();
      });
    await _artistService
        .getArtist(id: artistId)
        .then((value) => _addArtist(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await _artistService
        .getArtistsTopTracks(id: artistId, market: 'ES')
        .then((value) => _addArtistsTopTracks(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await _artistService
        .getArtistsRelatedArtists(id: artistId)
        .then((value) => _addArtistsRelatedArtists(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await _artistService
        .getArtistsAlbums(
            id: artistId,
            market: 'ES',
            limit: 10,
            offset: 0,
            includeGroups: ['album', 'single', 'appears_on', 'compilation'])
        .then((value) => _addArtistsAlbums(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  Future<void> startResumePlayback({
    String? contextUri,
    List<String>? uris,
    Map<String, Map<String, dynamic>>? offset,
  }) async {
    await _playerService.startResumePlayback(
      contextUri: contextUri,
      uris: uris,
      offset: offset,
    );
  }

  void _addArtist(ArtistModel artist) {
    data.artist = ArtistData(
      id: artist.id,
      followers: artist.followers?.total,
      genres: artist.genres != null ? artist.genres!.toList() : [],
      image: artist.images?.first.url,
      name: artist.name,
      popularity: artist.popularity.toString(),
      contextUri: artist.uri,
    );
  }

  void _addArtistsTopTracks(ArtistsTopTracksModel artistsTopTracks) {
    data.artistsTopTracks = artistsTopTracks.tracks
        .map((e) => ArtistsTopTracksData(
              id: e.id,
              name: e.name,
              image: e.album?.images?.first.url,
              artists:
                  e.album?.artists?.map((e) => e.name).join(', ').toString(),
              contextUri: e.uri,
            ))
        .toList();
  }

  void _addArtistsRelatedArtists(
      ArtistsRelatedArtistsModel artistsRelatedArtists) {
    data.artistsRelatedArtists = artistsRelatedArtists.artists
        .map((e) => ArtistsRelatedArtistsData(
              id: e.id,
              name: e.name,
              image: e.images?.first.url,
            ))
        .toList();
  }

  void _addArtistsAlbums(ArtistsAlbumsModel artistsAlbums) {
    data.artistsAlbums = artistsAlbums.items
        .map((e) => ArtistsAlbumsData(
              id: e.id,
              name: e.name,
              image: e.images?.first.url,
              year:
                  DateFormat("yyyy").parse(e.releaseDate ?? '').year.toString(),
              type: e.type,
            ))
        .toList();
  }

  Future<bool> checkUsersSavedTracks({
    required String id,
  }) async {
    return await _tracksService
        .checkUsersSavedTracks(ids: [id]).then((value) => value.first as bool);
  }

  void addRemoveFavorite({
    required String id,
    required bool isFavorite,
    required BuildContext context,
  }) {
    isFavorite
        ? _tracksService.removeUsersSavedTracks(
            ids: [id]).then((value) => Navigator.pop(context))
        : _tracksService.saveTracksForCurrentUser(
            ids: [id]).then((value) => Navigator.pop(context));
  }

  void addItemToPlaybackQueue({
    required String uri,
    required BuildContext context,
  }) async {
    await _playerService
        .addItemToPlaybackQueue(uri: uri)
        .then((value) => Navigator.pop(context));
  }

  void openAlbum({
    required String id,
    required BuildContext context,
  }) {
    Navigator.pushNamed(context, MainNavigationRouteNames.albumScreen,
            arguments: id)
        .then((value) => Navigator.pop(context));
  }

  void copyLink({
    required String url,
    required BuildContext context,
  }) async {
    await Clipboard.setData(ClipboardData(text: url))
        .then((_) => Navigator.pop(context));
  }

  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists() async {
    return await _playlistsService.getCurrentUsersPlaylists(
        offset: 0, limit: 10);
  }

  Future<void> addItemsToPlaylist({
    required String playlistId,
    required String uri,
    required BuildContext context,
  }) async {
    await _playlistsService.addItemsToPlaylist(
      playlistId: playlistId,
      uris: [uri],
    ).then((value) => Navigator.pop(context));
  }
}
