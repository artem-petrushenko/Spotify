part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoading extends HomeState {
  const HomeLoading();

  @override
  List<Object?> get props => [];
}

class HomeSuccess extends HomeState {
  final NewReleasesModel newReleasesModel;

  const HomeSuccess({
    required this.newReleasesModel,
  });

  @override
  List<Object?> get props => [newReleasesModel];
}

class HomeError extends HomeState {
  final Object? error;

  const HomeError({
    required this.error,
  });

  @override
  List<Object?> get props => [error];
}
