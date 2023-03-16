import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArtistGenresListWidget extends StatelessWidget {
  const ArtistGenresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final genres =
        context.select((ArtistViewModel model) => model.data.artist.genres);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.horizontalPadding,
        vertical: Constants.verticalPadding,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (genres.isNotEmpty)
              Text(
                AppLocalizations.of(context)!.genres,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            Wrap(
              spacing: 8.0,
              children: List.generate(
                genres.length,
                (int index) => Chip(
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                  label: Text(
                    genres[index],
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
