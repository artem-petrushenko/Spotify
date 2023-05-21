import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/albums/new_releases_model.dart';

import 'package:spotify_client/domain/services/albums/abstract_albums_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeLoadingState()) {
    _getNewReleases();
  }

  void _getNewReleases() async {
    try {
      emit(const HomeLoadingState());
      final newReleasesModel = await GetIt.instance<AbstractAlbumsService>()
          .getNewReleases(country: 'ES', limit: 10, offset: 0);
      emit(HomeSuccessState(newReleasesModel: newReleasesModel));
    } catch (error) {
      emit(HomeFailureState(error: error));
    }
  }
}
