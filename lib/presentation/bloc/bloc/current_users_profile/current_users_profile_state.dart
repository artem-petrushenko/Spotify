part of 'current_users_profile_bloc.dart';

@immutable
sealed class CurrentUsersProfileState extends Equatable {
  const CurrentUsersProfileState();
}

class CurrentUsersProfileLoading extends CurrentUsersProfileState {
  @override
  List<Object> get props => [];
}

class CurrentUsersProfileSuccess extends CurrentUsersProfileState {
  final CurrentUserProfileModel userProfile;

  const CurrentUsersProfileSuccess({
    required this.userProfile,
  });

  @override
  List<Object> get props => [userProfile];
}

class CurrentUsersProfileFailure extends CurrentUsersProfileState {
  final Object? error;

  const CurrentUsersProfileFailure({this.error});

  @override
  List<Object?> get props => [error];
}
