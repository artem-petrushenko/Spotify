import 'package:flutter/material.dart';

import 'package:spotify_client/ui/widgets/loading_container_widget.dart';

class PlaylistInProgressScreen extends StatelessWidget {
  const PlaylistInProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoadingContainerWidget(height: 12.0, width: 96.0),
                SizedBox(height: 8.0),
                LoadingContainerWidget(height: 16.0, width: 64.0),
                SizedBox(height: 8.0),
                LoadingContainerWidget(height: 12.0, width: 80.0),
                SizedBox(height: 8.0),
                LoadingContainerWidget(height: 12.0, width: 48.0),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: Row(
                  children: [
                    const LoadingContainerWidget(
                        height: 48.0, width: 48.0, radius: 12.0),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        LoadingContainerWidget(height: 12.0, width: 128.0),
                        SizedBox(height: 8.0),
                        LoadingContainerWidget(height: 12.0, width: 64.0),
                      ],
                    ),
                  ],
                ),
              );
            },
            childCount: 5,
          ),
        ),
      ],
    );
  }
}
