import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/services/artists_service.dart';

enum Status { loading, completed, error }

class ArtistData {
  final String? id;
  final int? followers;
  final List<String>? genres;
  final String? image;
  final String? name;
  final int? popularity;

  ArtistData({
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

class ArtistRenderedData {
  Status status = Status.loading;
  ArtistData artist = ArtistData(
    id: '',
    followers: null,
    genres: [],
    image: '',
    name: '',
    popularity: null,
  );
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
}
