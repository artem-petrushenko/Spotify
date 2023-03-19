import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/player/player_view_model.dart';

import 'package:spotify_client/ui/screens/player/screen_status/player_error_screen.dart';
import 'package:spotify_client/ui/screens/player/screen_status/player_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/player/screen_status/player_is_success_screen.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((PlayerViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const PlayerInProgressScreen();
      case Status.completed:
        return const PlayerIsSuccessScreen();
      case Status.error:
        return const PlayerErrorScreen();
    }
  }
}
