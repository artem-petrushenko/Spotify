part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {
  const AuthState();
}

class AuthComplete extends AuthState {
  final Object? error;

  const AuthComplete({
    this.error,
  });

  @override
  List<Object?> get props => [error];

  AuthComplete copyWith({
    Object? error,
  }) {
    return AuthComplete(
      error: error ?? this.error,
    );
  }
}

class AuthInProgress extends AuthState {
  @override
  List<Object> get props => [];
}
