import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';
import 'package:spotify_client/domain/services/artists_service.dart';

enum Status { loading, completed, error }

class ArtistData {
  final String? id;
  final int? followers;
  final List<String>? genres;
  final String? image;
  final String? name;
  final int? popularity;

  const ArtistData({
    required this.id,
    required this.followers,
    required this.genres,
    required this.image,
    required this.name,
    required this.popularity,
  });

  ArtistData copyWith({
    String? id,
    int? followers,
    List<String>? genres,
    String? image,
    String? name,
    int? popularity,
  }) {
    return ArtistData(
      id: id ?? this.id,
      followers: followers ?? this.followers,
      genres: genres ?? this.genres,
      image: image ?? this.image,
      name: name ?? this.name,
      popularity: popularity ?? this.popularity,
    );
  }
}

class ArtistsTopTracksData {
  final String? id;
  final String? name;
  final String? image;
  final int? number;

  const ArtistsTopTracksData({
    required this.id,
    required this.name,
    required this.image,
    required this.number
  });

  ArtistsTopTracksData copyWith({
    String? id,
    String? name,
    String? image,
    int? number,
  }) {
    return ArtistsTopTracksData(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      number: number ?? this.number,
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
  );
  List<ArtistsTopTracksData> artistsTopTracks = const [];
}

class ArtistViewModel extends ChangeNotifier {
  final String artistId;

  ArtistViewModel({required this.artistId}) {
    loadDetails();
  }

  final data = ArtistRenderedData();
  final _artistService = ArtistService();

  Future<void> loadDetails() async {
    await _artistService
        .getArtist(id: artistId)
        .then((value) => _addArtist(value))
        .onError((error, stackTrace) => data.status = Status.error);
    await _artistService
        .getArtistsTopTracks(id: artistId, market: 'ES')
        .then((value) => _addArtistsTopTracks(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addArtist(Artist artist) {
    data.artist = ArtistData(
      id: artist.id,
      followers: artist.followers?.total,
      genres: artist.genres?.toList(),
      image: artist.images?.first.url,
      name: artist.name,
      popularity: artist.popularity,
    );
  }

  void _addArtistsTopTracks(ArtistsTopTracks artistsTopTracks) {
    data.artistsTopTracks = artistsTopTracks.tracks
        .map((e) => ArtistsTopTracksData(
              id: e.id,
              name: e.name,
              image: e.album?.images?.first.url,
      number: e.popularity
            ))
        .toList();
  }
}
