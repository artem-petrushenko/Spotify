import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/services/albums_service.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

enum Status { loading, completed, error }

class ArtistData {
  final String? id;
  final String? imageUrl;
  final String? name;

  const ArtistData({
    required this.id,
    required this.imageUrl,
    required this.name,
  });

  ArtistData copyWith({
    String? id,
    String? imageUrl,
    String? name,
  }) {
    return ArtistData(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
    );
  }
}

class Copyright {
  final String? text;
  final String? type;

  const Copyright({
    required this.text,
    required this.type,
  });

  Copyright copyWith({
    String? text,
    String? type,
  }) {
    return Copyright(
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

class Track {
  final String? name;
  final String? artists;
  final String? id;

  const Track({
    required this.name,
    required this.artists,
    required this.id,
  });

  Track copyWith({
    String? name,
    String? artists,
    String? id,
  }) {
    return Track(
      name: name ?? this.name,
      artists: artists ?? this.artists,
      id: id ?? this.id,
    );
  }
}

class AlbumData {
  final String? imageUrl;
  final String? albumName;
  final String? type;
  final String? year;
  final List<ArtistData>? artists;
  final String? date;
  final List<Track>? tracks;
  final String? totalTime;
  final List<Copyright>? copyright;
  final String? totalTracks;

  const AlbumData({
    required this.imageUrl,
    required this.albumName,
    required this.type,
    required this.year,
    required this.artists,
    required this.date,
    required this.tracks,
    required this.totalTime,
    required this.copyright,
    required this.totalTracks,
  });

  AlbumData copyWith(
      {String? imageUrl,
      String? albumName,
      String? type,
      String? year,
      List<ArtistData>? artists,
      String? date,
      List<Track>? tracks,
      String? totalTime,
      List<Copyright>? copyright,
      String? totalTracks}) {
    return AlbumData(
      imageUrl: imageUrl ?? this.imageUrl,
      albumName: albumName ?? this.albumName,
      type: type ?? this.type,
      year: year ?? this.year,
      artists: artists ?? this.artists,
      date: date ?? this.date,
      tracks: tracks ?? this.tracks,
      totalTime: totalTime ?? this.totalTime,
      copyright: copyright ?? this.copyright,
      totalTracks: totalTracks ?? this.totalTracks,
    );
  }
}

class AlbumRenderedData {
  Status status = Status.loading;

  AlbumData information = const AlbumData(
    imageUrl: '',
    albumName: '',
    type: '',
    year: '',
    artists: [],
    date: '',
    tracks: [],
    totalTime: '',
    copyright: [],
    totalTracks: '',
  );
}

class AlbumViewModel extends ChangeNotifier {
  final String albumId;

  AlbumViewModel({required this.albumId}) {
    loadDetails();
  }

  final _albumsServices = AlbumsService();
  final data = AlbumRenderedData();

  Future<void> loadDetails() async {
    await _albumsServices
        .getSeveralAlbums(market: 'ES', ids: albumId)
        .then((value) => _addSeveralAlbums(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void playTrack(String id) {}

  void openArtist(BuildContext context, String artistId) {
    Navigator.of(context)
        .pushNamed(MainNavigationRouteNames.artistScreen, arguments: artistId);
  }

  void _addSeveralAlbums(SeveralAlbums severalAlbums) {
    data.information = AlbumData(
      imageUrl: severalAlbums.albums?.first.images?.first.url,
      albumName: severalAlbums.albums?.first.name,
      type: severalAlbums.albums?.first.type,
      year: severalAlbums.albums?.first.releaseDatePrecision,
      artists: severalAlbums.albums?.first.artists
          ?.map((e) =>
              ArtistData(id: e.id, imageUrl: e.images?.last.url, name: e.name))
          .toList(),
      date: severalAlbums.albums?.first.releaseDate,
      tracks: severalAlbums.albums?.first.tracks?.items
          ?.map((e) => Track(
                name: e.name,
                artists: e.artists?.map((e) => e.name).join(', ').toString(),
                id: e.id,
              ))
          .toList(),
      totalTime: severalAlbums.albums?.first.name,
      copyright: severalAlbums.albums?.first.copyrights
          ?.map((e) => Copyright(text: e.text, type: e.type))
          .toList(),
      totalTracks: severalAlbums.albums?.first.totalTracks.toString(),
    );
  }
}
