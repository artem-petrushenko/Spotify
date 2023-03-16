import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/screens/artist/screens_status/artist_error/artist_error_screen.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_in_progress/artist_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/artist_is_success_screen.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((ArtistViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const ArtistInProgressScreen();
      case Status.completed:
        return const ArtistIsSuccessScreen();
      case Status.error:
        return const ArtistErrorScreen();
    }
  }
}
