import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

class ArtistAppBarWidget extends StatelessWidget {
  const ArtistAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final openSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.openSliverAppBarHeight);
    final hideSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.hideSliverAppBarHeight);
    return SliverAppBar(
      collapsedHeight: hideSliverAppBarHeight,
      expandedHeight: openSliverAppBarHeight,
      centerTitle: true,
      pinned: true,
      stretch: true,
      title: const _TitleAppBarWidget(),
      leading: _AppBarButtonWidget(
        onPressed: () {},
        iconData: Icons.arrow_back_rounded,
      ),
      elevation: 0,
      actions: [
        _AppBarButtonWidget(
          onPressed: () {},
          iconData: Icons.add_rounded,
        ),
        _AppBarButtonWidget(
          onPressed: () {},
          iconData: Icons.more_vert_outlined,
        ),
      ],
      flexibleSpace: const _FlexibleSpaceBarWidget(),
    );
  }
}

class _AppBarButtonWidget extends StatelessWidget {
  const _AppBarButtonWidget({
    required this.onPressed,
    required this.iconData,
  });

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        iconData,
      ),
    );
  }
}

class _TitleAppBarWidget extends StatelessWidget {
  const _TitleAppBarWidget();

  @override
  Widget build(BuildContext context) {
    final name =
        context.select((ArtistViewModel model) => model.data.artist.name);
    final opacityAppBar =
        context.select((ArtistViewModel model) => model.opacityAppBar);
    return Opacity(
      opacity: opacityAppBar,
      child: Text(
        name ?? '',
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
    );
  }
}

class _FlexibleSpaceBarWidget extends StatelessWidget {
  const _FlexibleSpaceBarWidget();

  @override
  Widget build(BuildContext context) {
    final image =
        context.select((ArtistViewModel model) => model.data.artist.image);
    final opacityFlexibleSpace =
        context.select((ArtistViewModel model) => model.opacityFlexibleSpace);
    final contextUri =
        context.select((ArtistViewModel model) => model.data.artist.contextUri);
    final model = context.watch<ArtistViewModel>();
    return FlexibleSpaceBar(
      background: Opacity(
        opacity: opacityFlexibleSpace,
        child: Stack(
          fit: StackFit.expand,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ImageNetworkWidget(
                imageUrl: image ?? '',
              ),
            ),
            Positioned(
              right: 16.0,
              bottom: 16.0,
              child: Row(
                children: [
                  _CircleButtonWidget(
                    onPressed: () {},
                    icon: Icons.shuffle_rounded,
                  ),
                  _CircleButtonWidget(
                    onPressed: () => model.startResumePlayback(contextUri: contextUri ?? ''),
                    icon: Icons.play_arrow_rounded,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
    );
  }
}

class _CircleButtonWidget extends StatelessWidget {
  const _CircleButtonWidget({
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16.0),
      ),
      child: Icon(icon),
    );
  }
}
