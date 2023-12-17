import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_client/src/common/data/repository/auth/auth_repository.dart';

import 'package:spotify_client/src/feature/liked_songs/data/repository/liked_songs_repository.dart';

import 'package:spotify_client/src/feature/liked_songs/model/users_saved_tracks_model.dart';

part 'liked_songs_event.dart';

part 'liked_songs_state.dart';

part 'liked_songs_bloc.freezed.dart';

class LikedSongsBloc extends Bloc<LikedSongsEvent, LikedSongsState> {
  LikedSongsBloc({
    required final LikedSongsRepository likedSongsRepository,
    required final AuthRepository authRepository,
  })  : _likedSongsRepository = likedSongsRepository,
        _authRepository = authRepository,
        super(const LikedSongsState.loading()) {
    on<LikedSongsEvent>(
      (event, emit) => event.map<Future<void>>(
        fetchLikedSongs: (event) => _onFetchLikedSongs(event, emit),
      ),
    );
  }

  final LikedSongsRepository _likedSongsRepository;
  final AuthRepository _authRepository;

  Future<void> _onFetchLikedSongs(
    _FetchLikedSogns event,
    Emitter<LikedSongsState> emit,
  ) async {
    try {
      final accessToken = _authRepository.fetchAccessToken() ?? '';
      if (state is _Loading) {
        final result = await _likedSongsRepository.getUsersSavedTracks(
          market: "ES",
          offset: 0,
          limit: 20,
          accessToken: accessToken,
        );
        result.isEmpty
            ? emit(const _Empty())
            : emit(_Success(hasReachedMax: false, tracks: result.toList()));
      }
      if (state is _Success) {
        final result = await _likedSongsRepository.getUsersSavedTracks(
          market: "ES",
          offset: (state as _Success).tracks.length,
          limit: 20,
          accessToken: accessToken,
        );
        emit(result.isEmpty
            ? (state as _Success).copyWith(hasReachedMax: true)
            : (state as _Success).copyWith(
                hasReachedMax: false,
                tracks: (state as _Success).tracks + result.toList()));
      }
    } on Object catch (error) {
      emit(_Failure(error: error));
    }
  }
}
