import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/player/users_queue.dart';

import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

enum Status { loading, completed, error }

class UsersQueueViewModel extends ChangeNotifier {
  Stream<UsersQueueModel> getTheUsersQueue() async* {
    while (true) {
      const Duration(seconds: 1);
      yield await GetIt.instance<AbstractPlayerService>().getTheUsersQueue();
    }
  }
}
