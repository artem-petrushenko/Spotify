import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_client/domain/services/tracks/tracks_usecase.dart';

import 'package:spotify_client/domain/entities/tracks/users_saved_tracks_item_entity.dart';

part 'liked_songs_event.dart';

part 'liked_songs_state.dart';

class LikedSongsBloc extends Bloc<LikedSongsEvent, LikedSongsState> {
  int offset = 0;

  LikedSongsBloc() : super(LikedSongsLoading()) {
    on<LikedSongsEvent>(
      (event, emit) async {
        if (event is LoadLikedSongsEvent) {
          await onLoadLikedSongsEvent(event, emit);
        }
      },
      transformer: sequential(),
    );
  }

  Future<void> onLoadLikedSongsEvent(
      LoadLikedSongsEvent event, Emitter<LikedSongsState> emit) async {
    try {
      if (state is LikedSongsLoading) {
        final result = await TrackUseCase().getLikedTracks(
          market: "ES",
          offset: 0,
          limit: 20,
        );
        emit(result.isEmpty
            ? LikedSongsEmpty()
            : LikedSongsSuccess(hasReachedMax: false, tracks: result));
      }
      if (state is LikedSongsSuccess) {
        final result = await TrackUseCase().getLikedTracks(
          market: "ES",
          offset: (state as LikedSongsSuccess).tracks.length,
          limit: 20,
        );
        emit(result.isEmpty
            ? (state as LikedSongsSuccess).copyWith(hasReachedMax: true)
            : (state as LikedSongsSuccess).copyWith(
                hasReachedMax: false,
                tracks: (state as LikedSongsSuccess).tracks + result));
      }
    } catch (error) {
      emit(LikedSongsFailure(error: error));
    }
  }
}
