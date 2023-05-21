part of 'home_cubit.dart';

@immutable
sealed class HomeState {
  const HomeState();
}

class HomeLoadingState implements HomeState {
  const HomeLoadingState();
}

class HomeSuccessState implements HomeState {
  final NewReleasesModel newReleasesModel;

  const HomeSuccessState({
    required this.newReleasesModel,
  });
}

class HomeFailureState implements HomeState {
  final Object? error;

  const HomeFailureState({
    required this.error,
  });
}
