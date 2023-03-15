import 'package:flutter/material.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArtistPopularReleasesWidget extends StatelessWidget {
  const ArtistPopularReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Constants.horizontalPadding,
          vertical: Constants.verticalPadding,
        ),
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
    );
  }
}