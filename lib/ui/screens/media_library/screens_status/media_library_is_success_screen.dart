import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class MediaLibraryIsSuccessScreen extends StatelessWidget {
  const MediaLibraryIsSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isGridCards =
        context.select((MediaLibraryViewModel model) => model.isGridCards);
    final model = context.read<MediaLibraryViewModel>();
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.mediaLibrary),
          floating: true,
          pinned: true,
          snap: true,
          leading: IconButton(
            onPressed: () => model.openUserProfile(context),
            icon: const Icon(Icons.person_pin),
          ),
          flexibleSpace: const FlexibleSpaceBar(),
          actions: [
            IconButton(
              onPressed: () => model.setGridCard(),
              icon: Icon(
                isGridCards
                    ? Icons.density_medium_rounded
                    : Icons.grid_view_rounded,
              ),
            ),
          ],
        ),
        isGridCards ? const GridCardsWidget() : const ListCardWidget(),
      ],
    );
  }
}

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media =
        context.select((MediaLibraryViewModel model) => model.data.media);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                SizedBox(
                  height: 64.0,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      child: ImageNetworkWidget(
                        imageUrl: media[index].imageUrl ?? '',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          media[index].name ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          media[index].type ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: media.length,
      ),
    );
  }
}

class GridCardsWidget extends StatelessWidget {
  const GridCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final media =
        context.select((MediaLibraryViewModel model) => model.data.media);
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => GestureDetector(
          onTap: () => context
              .read<MediaLibraryViewModel>()
              .openMediaTypeScreen(context, media[index]),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                    child: ImageNetworkWidget(
                      imageUrl: media[index].imageUrl ?? '',
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          media[index].name ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          media[index].type ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        childCount: media.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        childAspectRatio: 0.735,
      ),
    );
  }
}
