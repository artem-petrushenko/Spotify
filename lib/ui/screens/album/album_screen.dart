import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/album/album_model.dart';
import 'package:spotify_client/ui/screens/album/album_tracks_list_widget.dart';
import 'package:spotify_client/ui/screens/album/album_app_bar_widget.dart';
import 'package:spotify_client/ui/screens/album/album_authors_widget.dart';
import 'package:spotify_client/ui/screens/album/album_data_widget.dart';
import 'package:spotify_client/ui/screens/album/album_copyrights_widget.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<AlbumViewModel>().scrollController;
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: const [
          AlbumAppBarWidget(),
          SliverToBoxAdapter(
            child: Text(
              'I am using the Web-API for a project. I found multiple tracks, where the field "preview_url" is null in the response (nearly half of those I tested). Tried with client credentials authentication and authorization code. I get the same response, with "preview_url" set to null each time. I am wondering why I do not get null when trying the same request with the Spotify API on rapidapi.com (https://rapidapi.com/Glavier/api/spotify23/). Also setting a market where the track is available does not solve the problem.Hello World!',
              style: TextStyle(fontSize: 36.0),
            ),
          ),
          AlbumTracksListWidget(),
          AlbumDataWidget(),
          AlbumAuthorsWidget(),
          AlbumCopyrightsWidget(),
        ],
      ),
    );
  }
}
