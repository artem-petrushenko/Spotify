import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/ui/screens/album/album_model.dart';
import 'package:spotify_client/ui/widgets/album_track_widget.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class AlbumIsSuccessScreen extends StatelessWidget {
  const AlbumIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = context
        .select((AlbumViewModel model) => model.data.information.imageUrl);
    final albumName = context
        .select((AlbumViewModel model) => model.data.information.albumName);
    final type =
        context.select((AlbumViewModel model) => model.data.information.type);
    final copyright = context
        .select((AlbumViewModel model) => model.data.information.copyright);
    final tracks =
        context.select((AlbumViewModel model) => model.data.information.tracks);
    final authors = context
        .select((AlbumViewModel model) => model.data.information.artists);
    final date =
        context.select((AlbumViewModel model) => model.data.information.date);
    final totalTracks = context
        .select((AlbumViewModel model) => model.data.information.totalTracks);
    final model = context.read<AlbumViewModel>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            elevation: 0,
            pinned: true,
            centerTitle: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ImageNetworkWidget(
                imageUrl: imageUrl ?? '',
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (albumName != null)
                    Text(albumName,
                        style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      if (type != null)
                        Text(type,
                            style: Theme.of(context).textTheme.labelMedium),
                      if (date != null)
                        Text(' • $date',
                            style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return AlbumTrackWidget(
                  name: tracks?[index].name,
                  authors: tracks?[index].artists,
                  detailsTrack: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return ModalSheetBottom(
                          track: tracks?[index],
                          album: albumName,
                          url: imageUrl,
                        );
                      },
                    );
                  },
                  playTrack: () => model.playTrack(tracks?[index].id ?? ''),
                );
              },
              childCount: tracks?.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding, vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (totalTracks != null)
                    Text('$totalTracks tracks',
                        style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.horizontalPadding, vertical: 4.0),
                  child: GestureDetector(
                    onTap: () =>
                        model.openArtist(context, authors?[index].id ?? ''),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          ImageNetworkWidget(
                            imageUrl: authors?[index].imageUrl ?? '',
                            height: 48.0,
                            width: 48.0,
                            radius: 12.0,
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              authors?[index].name ?? '',
                              style: Theme.of(context).textTheme.labelLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: authors?.length,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.horizontalPadding, vertical: 8.0),
                child: Text(
                  "${copyright?[index].text}",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              childCount: copyright?.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ModalSheetBottom extends StatelessWidget {
  final String? album;
  final String? url;
  final Track? track;

  const ModalSheetBottom({
    Key? key,
    required this.album,
    required this.url,
    required this.track,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: ListView(
        children: [
          const SizedBox(height: 24.0),
          Row(
            children: [
              ImageNetworkWidget(
                imageUrl: url ?? '',
                height: 64.0,
                width: 64.0,
                radius: 12.0,
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      track?.name ?? '',
                      style: Theme.of(context).textTheme.labelLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "${album ?? ''} • ${track?.artists ?? ''}",
                      style: Theme.of(context).textTheme.labelMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.favorite_border),
            title: const Text('Add to Favorite'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.remove_circle_outline),
            title: const Text('Hide Track'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.multitrack_audio_rounded),
            title: const Text('Add to Queue'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.queue_music_rounded),
            title: const Text('Add to Playlist'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.person_2_rounded),
            title: const Text('Go to Artist'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.share_rounded),
            title: const Text('Share'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.track_changes_rounded),
            title: const Text('Turn on the Radio by Track'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.data_array_outlined),
            title: const Text('View Details'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
