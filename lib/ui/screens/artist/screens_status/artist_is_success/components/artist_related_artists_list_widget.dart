import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class ArtistRelatedArtistsListWidget extends StatelessWidget {
  const ArtistRelatedArtistsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsRelatedArtists = context
        .select((ArtistViewModel model) => model.data.artistsRelatedArtists);
    return SliverToBoxAdapter(
      child: artistsRelatedArtists.isNotEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppLocalizations.of(context)!.fansMayLike,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: horizontalPadding),
                    itemCount: artistsRelatedArtists.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        _RelatedArtistWidget(
                      artistsData: artistsRelatedArtists[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 96.0,
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class _RelatedArtistWidget extends StatelessWidget {
  const _RelatedArtistWidget({required this.artistsData});

  final ArtistsRelatedArtistsData artistsData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageNetworkWidget(
          imageUrl: artistsData.image ?? '',
          height: 96.0,
          width: 96.0,
          radius: 16.0,
          color: Colors.black.withOpacity(0.32),
          colorBlendMode: BlendMode.darken,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0, vertical: verticalPadding),
          child: Text(
            artistsData.name ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }
}
