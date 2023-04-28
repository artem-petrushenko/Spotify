import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/home/home_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((HomeViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const Scaffold(body: Center(child: Text('Loading')));
      case Status.completed:
        final newReleasesModel = context
            .select((HomeViewModel model) => model.data.newReleasesModel);
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text('Home'),
                centerTitle: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ImageNetworkWidget(
                      imageUrl: newReleasesModel
                              .albums?.items?[index].images?.first.url ??
                          ''),
                  childCount: newReleasesModel.albums?.items?.length,
                ),
              )
            ],
          ),
        );
      case Status.error:
        return const Scaffold(body: Center(child: Text('Error')));
    }
  }
}
