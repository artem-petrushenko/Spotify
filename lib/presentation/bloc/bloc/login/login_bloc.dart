import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginComplete()) {
    on<LoginEvent>(_onLoginEvent);
  }

  Future<void> _onLoginEvent(LoginEvent event, Emitter<LoginState> emit) async {
    if (event is HandlingLoginEvent) {
      await _onHandlingLoginEvent(event, emit);
    } else if (event is StartLoginEvent) {
      await _onStartLoginEvent(event, emit);
    }
  }

  Future<void> _onHandlingLoginEvent(
      HandlingLoginEvent event, Emitter<LoginState> emit) async {
    try {
      emit(LoginInProgress());
      await GetIt.instance<AbstractAuthService>()
          .handleDeeplink(event.queryParameters);
      emit(const LoginComplete());
    } catch (error) {
      emit(LoginComplete(error: error));
    }
  }

  Future<void> _onStartLoginEvent(
      StartLoginEvent event, Emitter<LoginState> emit) async {
    try {
      emit(LoginInProgress());
      await GetIt.instance<AbstractAuthService>().makeRequestBrowser();
      emit(const LoginComplete());
    } catch (error) {
      emit(LoginComplete(error: error));
    }
  }
}
