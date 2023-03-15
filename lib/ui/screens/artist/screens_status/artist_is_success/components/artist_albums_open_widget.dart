import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

class ArtistAlbumsOpenWidget extends StatelessWidget {
  const ArtistAlbumsOpenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = context
        .select((ArtistViewModel model) => model.data.artistsAlbums.length);
    return SliverToBoxAdapter(
      child: length > 4
          ? TextButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context)!.openDiscography),
            )
          : const SizedBox.shrink(),
    );
  }
}
