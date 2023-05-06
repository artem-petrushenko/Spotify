import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class ArtistInformationWidget extends StatelessWidget {
  const ArtistInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final artist = context.select((ArtistViewModel model) => model.data.artist);
    final followers =
        context.select((ArtistViewModel model) => model.data.artist.followers);
    final popularity =
        context.select((ArtistViewModel model) => model.data.artist.popularity);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (popularity != null)
              _InformationWidget(
                title: popularity,
                subtitle: AppLocalizations.of(context)!.popularityOutOf100,
              ),
            if (popularity != null || followers != null)
              const SizedBox(width: 16.0),
            if (followers != null)
              _InformationWidget(
                title: AppLocalizations.of(context)!.followers(
                  artist.followers ?? 0,
                ),
                subtitle: AppLocalizations.of(context)!.subscribers,
              ),
          ],
        ),
      ),
    );
  }
}

class _InformationWidget extends StatelessWidget {
  const _InformationWidget({
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(cardBorderRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  fontSize: 24.0),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
