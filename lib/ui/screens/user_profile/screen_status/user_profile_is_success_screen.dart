import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class UserProfileIsSuccessScreen extends StatelessWidget {
  const UserProfileIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayName = context.select(
        (UserProfileViewModel model) => model.data.userProfileData.displayName);
    final totalFollowers = context.select((UserProfileViewModel model) =>
        model.data.userProfileData.totalFollowers);
    final imageUrl = context.select(
        (UserProfileViewModel model) => model.data.userProfileData.imageUrl);
    final model = context.read<UserProfileViewModel>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            elevation: 0,
            pinned: true,
            centerTitle: true,
            stretch: true,
            actions: [
              IconButton(
                onPressed: () => model.openSettings(context),
                icon: const Icon(
                  Icons.settings_rounded,
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: ImageNetworkWidget(
                imageUrl: imageUrl ?? '',
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$displayName',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('$totalFollowers followers'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('1 subscribers'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Playlists',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ImageNetworkWidget(
                          imageUrl:
                              'https://cdns-images.dzcdn.net/images/cover/c6e5ffd676146c447a4a81819c5d29ae/500x500.jpg',
                          radius: 12.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Soundtracks',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  '$index subscribers',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Watch 7 Playlists'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Recently listened',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ImageNetworkWidget(
                          imageUrl:
                              'https://cdns-images.dzcdn.net/images/cover/c6e5ffd676146c447a4a81819c5d29ae/500x500.jpg',
                          radius: 12.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Billie Eillish',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  '${(index + 1) * 52346} subscribers',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('More'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
