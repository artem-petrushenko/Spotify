import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/player/users_queue.dart';
import 'package:spotify_client/domain/services/player_service.dart';

enum Status { loading, completed, error }

class UsersQueueViewModel extends ChangeNotifier {
  final _playerService = PlayerService();

  Stream<UsersQueueModel> getTheUsersQueue() async* {
    while (true) {
      Duration(seconds: 1);
      yield await _playerService.getTheUsersQueue();
    }
  }
}
