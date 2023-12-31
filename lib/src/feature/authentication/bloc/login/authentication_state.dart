part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.authenticated(
      // required final AuthenticatedUser user,
      ) = _Authenticated;

  const factory AuthenticationState.loading(
      // @Default(UserEntity.notAuthenticated()) final UserEntity user,
      ) = _Loading;

  const factory AuthenticationState.failure({
    // @Default(UserEntity.notAuthenticated()) final UserEntity user,
    required final Object error,
  }) = _Failure;

  const factory AuthenticationState.success(
      // @Default(UserEntity.notAuthenticated()) final UserEntity user,
      ) = _Success;

  const factory AuthenticationState.notAuthenticated(
      // @Default(UserEntity.notAuthenticated()) final UserEntity user,
      ) = _NotAuthenticated;
}
