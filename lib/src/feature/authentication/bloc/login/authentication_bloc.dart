import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:spotify_client/src/feature/authentication/data/repository/authentication_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required final AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.loading()) {
    on<AuthenticationEvent>(
      (event, emit) => event.map<Future<void>>(
        fetchAuthStatus: (event) => _onFetchAuthStatus(event, emit),
        signInWithOAuth: (event) => _onSignInWithOAuth(event, emit),
        signOut: (event) => _onSignOut(event, emit),
        handleDeeplink: (event) => _onHandleDeeplink(event, emit),
      ),
      transformer: droppable(),
    );
  }

  final AuthenticationRepository _authenticationRepository;

  Future<void> _onFetchAuthStatus(
    _FetchAuthStatus event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(const _Loading());
      final accessToken = _authenticationRepository.fetchAccessToken();
      if (accessToken != null) {
        await _authenticationRepository.requestRefreshedAccessToken();
        emit(const _Authenticated());
      } else {
        await _authenticationRepository.logout();
        emit(const _NotAuthenticated());
      }
    } on Object catch (error) {
      emit(_Failure(error: error));
      emit(const _NotAuthenticated());
    }
  }

  Future<void> _onSignInWithOAuth(
    _SignInWithOAuth event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(const _Loading());
      await _authenticationRepository.makeRequestBrowser();
      emit(const _Success());
      emit(const _NotAuthenticated());
    } on Object catch (error) {
      emit(_Failure(error: error));
      emit(const _NotAuthenticated());
    }
  }

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<AuthenticationState> emit,
  ) async {}

  Future<void> _onHandleDeeplink(
    _HandleDeeplink event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      emit(const _Loading());
      await _authenticationRepository.handleDeeplink(event.queryParameters);
      emit(const _Success());
      emit(const _Authenticated());
    } on Object catch (error) {
      emit(_Failure(error: error));
      emit(const _NotAuthenticated());
    }
  }
}
