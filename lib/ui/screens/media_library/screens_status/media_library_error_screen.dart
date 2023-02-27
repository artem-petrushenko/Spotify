import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';

class MediaLibraryErrorScreen extends StatelessWidget {
  const MediaLibraryErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: context.read<MediaLibraryViewModel>().loadDetails,
          child: const Text('Press To Reload'),
        ),
      ),
    );
  }
}
