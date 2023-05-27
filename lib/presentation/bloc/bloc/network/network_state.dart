part of 'network_bloc.dart';

@immutable
sealed class NetworkState {}

class NetworkLoading extends NetworkState {}

class NetworkSuccess extends NetworkState {}

class NetworkFailure extends NetworkState {}
