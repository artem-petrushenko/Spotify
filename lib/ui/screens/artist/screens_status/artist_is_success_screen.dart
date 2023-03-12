import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArtistIsSuccessScreen extends StatelessWidget {
  const ArtistIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final artist = context.select((ArtistViewModel model) => model.data.artist);
    final artistsTopTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    final artistsRelatedArtists = context
        .select((ArtistViewModel model) => model.data.artistsRelatedArtists);
    final artistsAlbums =
        context.select((ArtistViewModel model) => model.data.artistsAlbums);
    final sliverController =
        context.select((ArtistViewModel model) => model.scrollController);
    final isSliverAppBarExpanded =
        context.select((ArtistViewModel model) => model.isSliverAppBarExpanded);
    final fabHeightPosition =
        context.select((ArtistViewModel model) => model.fabHeightPosition);
    final openSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.openSliverAppBarHeight);
    final hideSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.hideSliverAppBarHeight);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: sliverController,
            slivers: [
              SliverAppBar(
                collapsedHeight: hideSliverAppBarHeight,
                expandedHeight: openSliverAppBarHeight,
                title: isSliverAppBarExpanded
                    ? Text(
                        artist.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      )
                    : null,
                elevation: 0,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: ImageNetworkWidget(
                    imageUrl: artist.image ?? '',
                  ),
                  stretchModes: const [
                    StretchMode.zoomBackground,
                    StretchMode.fadeTitle,
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.horizontalPadding,
                    vertical: Constants.verticalPadding),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.0,
                        child: Text(
                          artist.name ?? '',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(
                        height: 72.0,
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Subscribe'))),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.mic_external_off)),
                            const SizedBox(width: 64.0),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.horizontalPadding),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Constants.horizontalPadding,
                            vertical: Constants.verticalPadding,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondaryContainer,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(Constants.cardBorderRadius),
                            ),
                            // border: Border.all(color: Theme.of(context).colorScheme.outline)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.followers(artist.popularity ?? 0),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                    fontSize: 24.0),
                              ),
                              Text(
                                'Out of 100 Popularity',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Constants.horizontalPadding,
                            vertical: Constants.verticalPadding,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondaryContainer,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(Constants.cardBorderRadius),
                            ),
                              // border: Border.all(color: Theme.of(context).colorScheme.outline)
                          ),
                          // shadowColor: Theme.of(context).colorScheme.shadow,
                          //
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.followers(
                                  artist.followers ?? 0,
                                ),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondaryContainer,
                                        fontSize: 24.0),
                              ),
                              Text(
                                'Subscribers',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Constants.horizontalPadding,
                  vertical: Constants.verticalPadding,
                ),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 8.0,
                        children: List.generate(
                          artist.genres!.length,
                          (int index) {
                            return Chip(label: Text(artist.genres![index]));
                          },
                        ).toList(),
                      ),
                      Text(
                        AppLocalizations.of(context)!.popularTracks,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Constants.horizontalPadding,
                          vertical: 4.0),
                      child: Row(
                        children: [
                          Text(
                            '#${(index + 1).toString()}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(width: 8.0),
                          ImageNetworkWidget(
                            imageUrl: artistsTopTracks[index].image ?? '',
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
                                  artistsTopTracks[index].name ?? '',
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  artistsTopTracks[index].artists ?? '',
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
                    );
                  },
                  childCount:
                      artistsTopTracks.length > 5 ? 5 : artistsTopTracks.length,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.horizontalPadding,
                      vertical: Constants.verticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.popularReleases,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Constants.horizontalPadding,
                          vertical: 4.0),
                      child: Row(
                        children: [
                          ImageNetworkWidget(
                            imageUrl: artistsAlbums[index].image ?? '',
                            height: 96.0,
                            radius: 12.0,
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  artistsAlbums[index].name ?? '',
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  artistsAlbums[index].name ?? '',
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount:
                      artistsTopTracks.length > 4 ? 4 : artistsTopTracks.length,
                ),
              ),
              if (artistsRelatedArtists.isNotEmpty)
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.horizontalPadding,
                      vertical: Constants.verticalPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      AppLocalizations.of(context)!.fansMayLike,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              if (artistsRelatedArtists.isNotEmpty)
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 200.0,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Constants.horizontalPadding),
                      itemCount: artistsRelatedArtists.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            ImageNetworkWidget(
                              imageUrl:
                                  artistsRelatedArtists[index].image ?? '',
                              height: 96.0,
                              width: 96.0,
                              radius: 16.0,
                              color: Colors.black.withOpacity(0.32),
                              colorBlendMode: BlendMode.darken,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: Constants.verticalPadding),
                              child: Text(
                                artistsRelatedArtists[index].name ?? '',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 96.0,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                    ),
                  ),
                ),
              const SliverPadding(
                  padding:
                      EdgeInsets.symmetric(vertical: Constants.verticalPadding))
            ],
          ),
          Positioned(
            top: fabHeightPosition,
            right: Constants.horizontalPadding,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.play_arrow_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
