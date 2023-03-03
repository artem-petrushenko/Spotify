import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';

import 'package:spotify_client/ui/screens/media_library/screens_status/media_library_error_screen.dart';
import 'package:spotify_client/ui/screens/media_library/screens_status/media_library_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/media_library/screens_status/media_library_is_success_screen.dart';

class MediaLibraryScreen extends StatelessWidget {
  const MediaLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status =
        context.select((MediaLibraryViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const MediaLibraryInProgressScreen();
      case Status.completed:
        return const MediaLibraryIsSuccessScreen();
      case Status.error:
        return const MediaLibraryErrorScreen();
    }
  }
}
