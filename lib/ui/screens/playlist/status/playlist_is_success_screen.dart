import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class PlaylistIsSuccessScreen extends StatelessWidget {
  const PlaylistIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opacityFlexibleSpace =
        context.select((PlaylistViewModel model) => model.opacityFlexibleSpace);
    final openSliverAppBarHeight = context
        .select((PlaylistViewModel model) => model.openSliverAppBarHeight);
    final hideSliverAppBarHeight = context
        .select((PlaylistViewModel model) => model.hideSliverAppBarHeight);
    final sliverController =
        context.select((PlaylistViewModel model) => model.scrollController);
    final opacityAppBar =
        context.select((PlaylistViewModel model) => model.opacityAppBar);
    final name =
        context.select((PlaylistViewModel model) => model.data.media.name);
    final playlistID =
        context.select((PlaylistViewModel model) => model.playlistID);
    final image = context.select((PlaylistViewModel model) => model.image);
    return CustomScrollView(
      controller: sliverController,
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          collapsedHeight: hideSliverAppBarHeight,
          expandedHeight: openSliverAppBarHeight,
          centerTitle: true,
          pinned: true,
          stretch: true,
          title: Opacity(
            opacity: opacityAppBar,
            child: Text(
              name ?? '',
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: () {},
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Opacity(
              opacity: opacityFlexibleSpace,
              child: Hero(
                tag: playlistID,
                child: ImageNetworkWidget(
                  width: double.infinity,
                  height: 350.0,
                  imageUrl: image,
                ),
              ),
            ),
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
            ],
          ),
        ),
        const _PlaylistDataWidget(),
        const _TracksListWidget(),
      ],
    );
  }
}

class _TracksListWidget extends StatelessWidget {
  const _TracksListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<PlaylistViewModel>();
    final length = context.select((PlaylistViewModel model) =>
        model.data.playlistItemsModel.items?.length);
    final data = context.select((PlaylistViewModel model) => model.data);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final artists = data.playlistItemsModel.items?[index].track?.artists
              ?.map((e) => e.name)
              .toList()
              .join(', ');
          final name = data.playlistItemsModel.items?[index].track?.name;
          final imageUrl = data
              .playlistItemsModel.items?[index].track?.album?.images?.first.url;
          final id = data.playlistItemsModel.items?[index].track?.id;
          return GestureDetector(
            onTap: () => model.openTrack(id ?? '', context, imageUrl ?? ''),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Row(
                children: [
                  Hero(
                    tag: '$id',
                    child: ImageNetworkWidget(
                      imageUrl: imageUrl ?? '',
                      height: 48.0,
                      width: 48.0,
                      radius: 4.0,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name ?? '',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          artists ?? '',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 8.0),
                      Container(
                        alignment: Alignment.center,
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16.0))),
                        child: Text(
                          'B',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_rounded),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        childCount: length,
      ),
    );
  }
}

class _PlaylistDataWidget extends StatelessWidget {
  const _PlaylistDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final description = context
        .select((PlaylistViewModel model) => model.data.media.description);
    final displayName = context.select(
        (PlaylistViewModel model) => model.data.media.owner?.displayName);
    final followers = context
        .select((PlaylistViewModel model) => model.data.media.followers?.total);
    final collaborative = context
        .select((PlaylistViewModel model) => model.data.media.collaborative);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description ??
                  "This is the description that the user added to the description of this playlist. Maybe it's empty, maybe not. God only knows what's in that user's head",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16.0))),
                  child: Text(
                    displayName?[0] ?? '',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  displayName ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.lock_outline_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(width: 8.0),
                Text('$followers likes'),
              ],
            ),
            Icon(
              collaborative ?? false ? Icons.add : Icons.add_box_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
