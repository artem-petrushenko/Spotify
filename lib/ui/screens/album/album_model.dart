import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:spotify_client/domain/services/albums_service.dart';

import 'package:spotify_client/domain/entity/albums/album.dart';

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
  final DateTime? date;
  final List<Track>? tracks;
  final String? totalTime;
  final List<Copyright>? copyright;
  final int? totalTracks;

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
      DateTime? date,
      List<Track>? tracks,
      String? totalTime,
      List<Copyright>? copyright,
      int? totalTracks}) {
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
    date: null,
    tracks: [],
    totalTime: '',
    copyright: [],
    totalTracks: null,
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
        .getAlbum(market: 'ES', id: albumId)
        .then((value) => _addAlbum(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void playTrack(String id) {}

  void openArtist(BuildContext context, String artistId) {
    context.push('/artist/$artistId');
  }

  void _addAlbum(AlbumModel album) {
    data.information = AlbumData(
      imageUrl: album.images?.first.url,
      albumName: album.name,
      type: album.type,
      year: album.releaseDatePrecision,
      artists: album.artists
          ?.map((e) =>
              ArtistData(id: e.id, imageUrl: e.images?.last.url, name: e.name))
          .toList(),
      date: DateFormat("yyyy-MM-dd")
          .parse(album.releaseDate ?? ''),
      tracks: album.tracks?.items
          ?.map((e) => Track(
                name: e.name,
                artists: e.artists?.map((e) => e.name).join(', ').toString(),
                id: e.id,
              ))
          .toList(),
      totalTime: album.name,
      copyright: album.copyrights
          ?.map((e) => Copyright(text: e.text, type: e.type))
          .toList(),
      totalTracks: album.totalTracks,
    );
  }
}
