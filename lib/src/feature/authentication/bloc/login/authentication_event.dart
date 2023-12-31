part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.fetchAuthStatus() = _FetchAuthStatus;

  const factory AuthenticationEvent.signInWithOAuth() = _SignInWithOAuth;

  const factory AuthenticationEvent.signOut() = _SignOut;

  const factory AuthenticationEvent.handleDeeplink({
    required final Map<String, String> queryParameters,
  }) = _HandleDeeplink;
}
