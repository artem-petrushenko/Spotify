import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/artist/artist_model.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ArtistViewModel>();
    return Scaffold(
      body: Center(
        child: Text(model.artistId),
      ),
    );
  }
}
