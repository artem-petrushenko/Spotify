import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/widgets/loading_container_widget.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class ArtistInProgressScreen extends StatelessWidget {
  const ArtistInProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final openSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.openSliverAppBarHeight);
    final hideSliverAppBarHeight =
        context.select((ArtistViewModel model) => model.hideSliverAppBarHeight);
    return Scaffold(
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            collapsedHeight: hideSliverAppBarHeight,
            expandedHeight: openSliverAppBarHeight,
            centerTitle: true,
            pinned: true,
            stretch: true,
            elevation: 0,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
            flexibleSpace: const LoadingContainerWidget(
              width: double.infinity,
              height: double.infinity,
              radius: 0.0,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: LoadingContainerWidget(
                          height: 64.0,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: LoadingContainerWidget(
                          height: 64.0,
                          width: double.infinity,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 32.0),
                  const LoadingContainerWidget(
                    height: 16.0,
                    width: 128.0,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: LoadingContainerWidget(
                    height: 48.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
