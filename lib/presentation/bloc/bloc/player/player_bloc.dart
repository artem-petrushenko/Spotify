import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';

import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

part 'player_event.dart';

part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerLoadingState()) {
    on<GetCurrentPlayTrackEvent>(_onGetCurrentPlayTrackEvent);
    on<PlayerEvent>(
      _onPlayerEvent,
      transformer: sequential(),
    );
  }

  void _onPlayerEvent(PlayerEvent event, Emitter<PlayerState> emit) {
    if (event is StartResumePlaybackEvent) {
      _onStartResumePlaybackEvent(event, emit);
    } else if (event is SkipToNextEvent) {
      _onSkipToNextEvent(event, emit);
    } else if (event is SkipToPreviousEvent) {
      _onSkipToPreviousEvent(event, emit);
    } else if (event is TogglePlaybackShuffleEvent) {
      _onTogglePlaybackShuffleEvent(event, emit);
    } else if (event is ChangePositionEvent) {
      _onChangePositionEvent(event, emit);
    } else if (event is SetRepeatModeEvent) {
      _onSetRepeatModeEvent(event, emit);
    }
  }

  void _onSetRepeatModeEvent(
      SetRepeatModeEvent event, Emitter<PlayerState> emit) async {
    await GetIt.instance<AbstractPlayerService>()
        .setRepeatMode(state: event.repeatState);
  }

  void _onChangePositionEvent(
      ChangePositionEvent event, Emitter<PlayerState> emit) async {
    await GetIt.instance<AbstractPlayerService>()
        .seekToPosition(positionMs: event.position.toInt());
  }

  void _onTogglePlaybackShuffleEvent(
      TogglePlaybackShuffleEvent event, Emitter<PlayerState> emit) async {
    await GetIt.instance<AbstractPlayerService>()
        .togglePlaybackShuffle(state: event.shuffleState);
  }

  void _onSkipToPreviousEvent(
      SkipToPreviousEvent event, Emitter<PlayerState> emit) async {
    await GetIt.instance<AbstractPlayerService>().skipToPrevious();
  }

  void _onSkipToNextEvent(
      SkipToNextEvent event, Emitter<PlayerState> emit) async {
    await GetIt.instance<AbstractPlayerService>().skipToNext();
  }

  void _onStartResumePlaybackEvent(
      StartResumePlaybackEvent event, Emitter<PlayerState> emit) async {
    event.isPlaying
        ? await GetIt.instance<AbstractPlayerService>().pausePlayback()
        : await GetIt.instance<AbstractPlayerService>().startResumePlayback();
  }

  void _onGetCurrentPlayTrackEvent(
      GetCurrentPlayTrackEvent event, Emitter<PlayerState> emit) async {
    await emit.onEach(
      _getCurrentlyPlayingTrackModel(),
      onData: (track) {
        try {
          emit(PlayerSuccessState(track: track));
        } catch (error) {
          emit(PlayerFailureState(error: error));
        }
      },
    );
  }

  Stream<CurrentlyPlayingTrackModel> _getCurrentlyPlayingTrackModel() async* {
    yield* Stream.periodic(const Duration(milliseconds: 500), (_) async {
      return await GetIt.instance<AbstractPlayerService>()
          .getCurrentlyPlayingTrack();
    }).asyncMap((track) async => await track);
  }
}
