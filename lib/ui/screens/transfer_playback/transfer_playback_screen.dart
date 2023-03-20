import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/ui/screens/transfer_playback/screen_status/transfer_playback_error_screen.dart';
import 'package:spotify_client/ui/screens/transfer_playback/screen_status/transfer_playback_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/transfer_playback/screen_status/transfer_playback_is_success_screen.dart';

class TransferPlaybackScreen extends StatelessWidget {
  const TransferPlaybackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status =
        context.select((TransferPlaybackViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const TransferPlaybackInProgressScreen();
      case Status.completed:
        return const TransferPlaybackIsSuccessScreen();
      case Status.error:
        return const TransferPlaybackErrorScreen();
    }
  }
}
