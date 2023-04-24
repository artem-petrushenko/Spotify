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
    final data = context.select((PlaylistViewModel model) => model.data);
    final image = context.select((PlaylistViewModel model) => model.image);
    final length = context.select(
        (PlaylistViewModel model) => model.data.media.tracks?.items?.length);
    final model = context.read<PlaylistViewModel>();
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
                tag: 'HERO_$playlistID',
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description: ${data.media.description ?? ''}"),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 32.0,
                      height: 32.0,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0))),
                      child: Text(
                        'B',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "BurgerDonald's",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      data.media.public ?? false
                          ? Icons.lock_open_rounded
                          : Icons.lock_outline_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                        '${data.media.followers?.total.toString() ?? ''} likes'),
                  ],
                ),
                Text(data.media.owner?.displayName ?? ''),
                Icon(
                  data.media.collaborative ?? false
                      ? Icons.add
                      : Icons.add_box_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Text(data.media.type ?? ''),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final artists = data.media.tracks?.items?[index].track?.artists
                  ?.map((e) => e.name)
                  .toList()
                  .join(', ');
              final name = data.media.tracks?.items?[index].track?.name;
              final imageUrl = data
                  .media.tracks?.items?[index].track?.album?.images?.first.url;
              final id = data.media.tracks?.items?[index].track?.id;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: InkWell(
                  onTap: () =>
                      model.openTrack(id ?? '', context, imageUrl ?? ''),
                  borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  child: Row(
                    children: [
                      Hero(
                        tag: '$id',
                        child: ImageNetworkWidget(
                          imageUrl: imageUrl ?? '',
                          height: 48.0,
                          width: 48.0,
                          radius: 12.0,
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_rounded),
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: length,
          ),
        ),
      ],
    );
  }
}
