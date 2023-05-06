import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class ArtistPopularTracksWidget extends StatelessWidget {
  const ArtistPopularTracksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    return popularTracks.isNotEmpty
        ? SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                AppLocalizations.of(context)!.popularTracks,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          )
        : const SliverToBoxAdapter();
  }
}
