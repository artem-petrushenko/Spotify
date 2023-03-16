import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_albums_list_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_app_bar_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_genres_list_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_information_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_popular_releases_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_popular_tracks_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_related_artists_list_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_top_tracks_list_widget.dart';
import 'package:spotify_client/ui/screens/artist/screens_status/artist_is_success/components/artist_albums_open_widget.dart';

class ArtistIsSuccessScreen extends StatelessWidget {
  const ArtistIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sliverController =
        context.select((ArtistViewModel model) => model.scrollController);
    return Scaffold(
      body: CustomScrollView(
        controller: sliverController,
        slivers: const [
          ArtistAppBarWidget(),
          ArtistInformationWidget(),
          ArtistGenresListWidget(),
          ArtistPopularTracksWidget(),
          ArtistTopTracksListWidget(),
          ArtistPopularReleasesWidget(),
          ArtistAlbumsListWidget(),
          ArtistAlbumsOpenWidget(),
          ArtistRelatedArtistsListWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 16.0)),
        ],
      ),
    );
  }
}
