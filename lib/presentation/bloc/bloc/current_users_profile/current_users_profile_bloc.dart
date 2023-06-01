import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

import 'package:spotify_client/domain/services/users/abstract_users_service.dart';

part 'current_users_profile_event.dart';

part 'current_users_profile_state.dart';

class CurrentUsersProfileBloc
    extends Bloc<CurrentUsersProfileEvent, CurrentUsersProfileState> {
  CurrentUsersProfileBloc() : super(CurrentUsersProfileLoading()) {
    on<CurrentUsersProfileEvent>((event, emit) async {
      if (event is FetchCurrentUsersProfile) {
        await _onFetchCurrentUsersProfile(event, emit);
      }
    });
  }

  Future<void> _onFetchCurrentUsersProfile(FetchCurrentUsersProfile event,
      Emitter<CurrentUsersProfileState> emit) async {
    try {
      final userProfile =
          await GetIt.instance<AbstractUsersService>().getCurrentUserProfile();
      emit(CurrentUsersProfileSuccess(userProfile: userProfile));
    } catch (error) {
      emit(CurrentUsersProfileFailure(error: error));
    }
  }
}
