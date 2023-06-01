part of 'current_users_profile_bloc.dart';

@immutable
sealed class CurrentUsersProfileEvent extends Equatable {
  const CurrentUsersProfileEvent();
}

final class FetchCurrentUsersProfile extends CurrentUsersProfileEvent {

  @override
  List<Object?> get props => [];
}
