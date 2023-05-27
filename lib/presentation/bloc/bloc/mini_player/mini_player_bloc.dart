import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:spotify_client/domain/entity/player/playback_state.dart';

import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

part 'mini_player_event.dart';

part 'mini_player_state.dart';

class MiniPlayerBloc extends Bloc<MiniPlayerEvent, MiniPlayerState> {
  MiniPlayerBloc() : super(MiniPlayerLoadingState()) {
    on<GetPlaybackStateEvent>(
      _onGetPlaybackStateEvent,
    );
    on<MiniPlayerEvent>(
      _onMiniPlayerEvent,
      transformer: sequential(),
    );
  }

  void _onGetPlaybackStateEvent(
      GetPlaybackStateEvent event, Emitter<MiniPlayerState> emit) async {
    await emit.onEach(
      _getPlaybackState(),
      onData: (playback) {
        try {
          if (playback == null) {
            emit(MiniPlayerInactiveState());
          } else {
            emit(MiniPlayerActiveState(playback: playback));
          }
        } catch (error) {
          emit(MiniPlayerFailureState(error: error));
        }
      },
    );
  }

  Stream<PlaybackStateModel?> _getPlaybackState() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (_) async {
      return await GetIt.instance<AbstractPlayerService>().getPlaybackState();
    }).asyncMap((playback) async => await playback);
  }

  void _onMiniPlayerEvent(
      MiniPlayerEvent event, Emitter<MiniPlayerState> emit) async {
    if (event is PauseStartPlaybackEvent) {
      _onPauseStartPlaybackEvent(event, emit);
    }
  }

  void _onPauseStartPlaybackEvent(
      PauseStartPlaybackEvent event, Emitter<MiniPlayerState> emit) async {
    event.isPlaying
        ? GetIt.instance<AbstractPlayerService>().pausePlayback()
        : GetIt.instance<AbstractPlayerService>().startResumePlayback();
  }
}
