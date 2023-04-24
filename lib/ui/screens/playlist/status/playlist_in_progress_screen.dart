import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

class PlaylistInProgressScreen extends StatelessWidget {
  const PlaylistInProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PlaylistViewModel>();
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          expandedHeight: 350.0,
          centerTitle: true,
          pinned: true,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: 'HERO_${model.playlistID}',
              child: ImageNetworkWidget(
                width: double.infinity,
                height: 350.0,
                imageUrl: model.image,
              ),
            ),
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded),
                    )
                  ],
                ),
              );
            },
            childCount: model.data.media.tracks?.items?.length,
          ),
        ),
      ],
    );
  }
}
