import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthComplete()) {
    on<AuthEvent>(_onAuthEvent);
  }

  Future<void> _onAuthEvent(AuthEvent event, Emitter<AuthState> emit) async {
    if (event is HandlingAuthEvent) {
      await _onHandlingAuthEvent(event, emit);
    } else if (event is StartAuthEvent) {
      await _onStartAuthEvent(event, emit);
    }
  }

  Future<void> _onHandlingAuthEvent(
      HandlingAuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthInProgress());
      await GetIt.instance<AbstractAuthService>()
          .handleDeeplink(event.queryParameters);
      emit(const AuthComplete());
    } catch (error) {
      emit(AuthComplete(error: error));
    }
  }

  Future<void> _onStartAuthEvent(
      StartAuthEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthInProgress());
      await GetIt.instance<AbstractAuthService>().makeRequestBrowser();
      emit(const AuthComplete());
    } catch (error) {
      emit(AuthComplete(error: error));
    }
  }
}
