import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:spotify_client/ui/widgets/track_modal_bottom_sheet.dart';

class ArtistTopTracksListWidget extends StatelessWidget {
  const ArtistTopTracksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsTopTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    return artistsTopTracks.isNotEmpty
        ? SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _TrackWidget(
                    track: artistsTopTracks[index],
                    index: index,
                  );
                },
                childCount:
                    artistsTopTracks.length > 5 ? 5 : artistsTopTracks.length,
              ),
            ),
          )
        : const SliverToBoxAdapter();
  }
}

class _TrackWidget extends StatelessWidget {
  const _TrackWidget({
    required this.track,
    required this.index,
  });

  final int index;
  final ArtistsTopTracksData track;

  @override
  Widget build(BuildContext context) {
    final model = context.read<ArtistViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '#${(index + 1).toString()}',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
          ),
          const SizedBox(width: 8.0),
          ImageNetworkWidget(
            imageUrl: track.image ?? '',
            height: 48.0,
            width: 48.0,
            radius: 12.0,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  track.name ?? '',
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  track.artists ?? '',
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => model
                .checkUsersSavedTracks(id: track.id ?? '')
                .then((value) =>
                    _openTrackModalBottomSheet(context, value, model)),
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
    );
  }

  void _openTrackModalBottomSheet(
          BuildContext context, bool isFavorite, ArtistViewModel model) =>
      showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return TrackModalBottomSheet(
            track: null,
            album: 'albumName',
            url: 'imageUrl',
            isFavorite: isFavorite,
            addRemoveFavorite: () => model.addRemoveFavorite(
              id: track.id ?? '',
              isFavorite: isFavorite,
              context: context,
            ),
            addItemToPlaybackQueue: () => model.addItemToPlaybackQueue(
              uri: 'spotify:track:4iV5W9uYEdYUVa79Axb7Rh',
              context: context,
            ),
            addToPlaylist: () => model.getCurrentUsersPlaylists().then(
                  (value) => _openPlaylistsDialog(context, value, model),
                ),
            viewAlbum: () => model.openAlbum(
              id: '0tGPJ0bkWOUmH7MEOR77qc',
              context: context,
            ),
            copyLink: () => model.copyLink(
              url: 'url',
              context: context,
            ),
          );
        },
      );

  void _openPlaylistsDialog(
          BuildContext context,
          CurrentUsersPlaylistsModel currentUsersPlaylistsModel,
          ArtistViewModel model) =>
      showDialog<void>(
        context: context,
        builder: (BuildContext context) => Dialog.fullscreen(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Add track to playlists'),
              centerTitle: true,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded),
              ),
              actions: [
                IconButton(
                  onPressed: () => _openCreatePlaylistDialog(model, context),
                  icon: const Icon(Icons.add_rounded),
                ),
              ],
            ),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) => ListTile(
                onTap: () => model.addItemsToPlaylist(
                  playlistId: currentUsersPlaylistsModel.items[index].id ?? '',
                  uri: 'spotify:track:6OmhkSOpvYBokMKQxpIGx2',
                  context: context,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                leading: ImageNetworkWidget(
                  imageUrl: currentUsersPlaylistsModel
                          .items[index].images?.first.url ??
                      '',
                  radius: 8.0,
                ),
                title: Text(currentUsersPlaylistsModel.items[index].name ?? ''),
                subtitle: Text(
                    '${currentUsersPlaylistsModel.items[index].tracks?.total.toString()} tracks'),
              ),
              itemCount: currentUsersPlaylistsModel.items.length,
            ),
          ),
        ),
      );

  void _openCreatePlaylistDialog(ArtistViewModel model, BuildContext context) =>
      showDialog<void>(
        context: context,
        builder: (BuildContext context) => Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add_box_rounded),
                const Text('1'),
                const Text('2'),
                const Divider(),
                const TextField(),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {},
                ),
                const Text('This is a typical dialog.'),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                    TextButton(
                        onPressed: () => model.createPlaylist(userId: '31tvzt2s4yfemkkyonfdya75wp6m', context: context),
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
