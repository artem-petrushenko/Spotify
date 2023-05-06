import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/utils/constants/numbers.dart';


class ArtistAlbumsListWidget extends StatelessWidget {
  const ArtistAlbumsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final artistsAlbums =
        context.select((ArtistViewModel model) => model.data.artistsAlbums);
    return artistsAlbums.isNotEmpty
        ? SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 4.0,
                  ),
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
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Row(
                              children: [
                                _SubtitleWidget(
                                  subtitle: [
                                    artistsAlbums[index].year,
                                    getContentType(
                                      artistsAlbums[index].type ?? '',
                                      context,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: artistsAlbums.length > 4 ? 4 : artistsAlbums.length,
            ),
          )
        : const SliverToBoxAdapter();
  }

  String getContentType(String type, BuildContext context) {
    switch (type) {
      case 'album':
        return AppLocalizations.of(context)!.album;
      case 'single':
        return AppLocalizations.of(context)!.single;
      case 'compilation':
        return AppLocalizations.of(context)!.compilation;
      default:
        return '';
    }
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget({required this.subtitle});

  final List<String?> subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle.join(' • '),
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
