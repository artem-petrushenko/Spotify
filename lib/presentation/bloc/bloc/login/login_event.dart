part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {
  const LoginEvent();
}

class StartLoginEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class HandlingLoginEvent extends LoginEvent {
  final Map<String, String> queryParameters;

  const HandlingLoginEvent({
    required this.queryParameters,
  });

  @override
  List<Object?> get props => [queryParameters];
}
