part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable {
  const LoginState();
}

class LoginComplete extends LoginState {
  final Object? error;

  const LoginComplete({
    this.error,
  });

  @override
  List<Object?> get props => [error];

  LoginComplete copyWith({
    Object? error,
  }) {
    return LoginComplete(
      error: error ?? this.error,
    );
  }
}

class LoginInProgress extends LoginState {
  @override
  List<Object> get props => [];
}
