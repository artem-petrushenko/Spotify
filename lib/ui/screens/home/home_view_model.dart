import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:spotify_client/domain/entity/albums/new_releases_model.dart';
import 'package:spotify_client/domain/services/albums/abstract_albums_service.dart';

enum Status { loading, completed, error }

class HomeLocalModel {
  Status status = Status.loading;
  NewReleasesModel newReleasesModel = const NewReleasesModel();
}

class HomeViewModel extends ChangeNotifier {
  final data = HomeLocalModel();

  HomeViewModel() {
    loadDetails();
  }

  void loadDetails() async {
    await GetIt.instance<AbstractAlbumsService>()
        .getNewReleases(country: 'ES', limit: 3, offset: 0)
        .then((value) => _addNewReleases(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addNewReleases(NewReleasesModel newReleasesModel) {
    data.newReleasesModel = newReleasesModel;
  }
}
