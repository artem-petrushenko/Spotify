part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

class StartAuthEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class HandlingAuthEvent extends AuthEvent {
  final Map<String, String> queryParameters;

  const HandlingAuthEvent({
    required this.queryParameters,
  });

  @override
  List<Object?> get props => [queryParameters];
}
