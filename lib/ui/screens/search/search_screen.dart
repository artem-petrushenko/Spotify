import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/search/search_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SearchViewModel>();
    final searchData =
        context.select((SearchViewModel model) => model.searchData);
    return Scaffold(
      body: SearchAnchor(
        viewTrailing: [
          IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: () => model.searchController.clear(),
          ),
        ],
        viewLeading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {},
        ),
        searchController: model.searchController,
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          return List<ListTile>.generate(
            searchData?.length ?? 0,
            (int index) {
              return ListTile(
                leading: AspectRatio(
                  aspectRatio: 1,
                  child: ImageNetworkWidget(
                    imageUrl: searchData?[index].image ?? '',
                    radius: 4.0,
                  ),
                ),
                title: Text(
                  searchData?[index].title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                subtitle: Text(
                  searchData?[index].subtitle ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
              );
            },
          );
        },
        builder: (BuildContext context, SearchController controller) {
          return AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () => controller.openView(),
              ),
            ],
          );
        },
      ),
    );
  }
}
