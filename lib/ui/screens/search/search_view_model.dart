import 'dart:async';

import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/search/tracks.dart';

import 'package:spotify_client/domain/services/search_service.dart';

class SearchData {
  final String? title;
  final String? subtitle;
  final String? image;

  const SearchData({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  SearchData copyWith({
    String? title,
    String? subtitle,
    String? image,
  }) {
    return SearchData(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      image: image ?? this.image,
    );
  }
}

class SearchViewModel extends ChangeNotifier {
  final _searchService = SearchService();
  Timer? searchDebounce;
  String? _searchQuery;
  List<SearchData>? searchData = [];


  Future<void> searchItem(String text) async {
    searchDebounce?.cancel();
    searchDebounce = Timer(const Duration(milliseconds: 250), () async {
      final searchQuery = text.isNotEmpty ? text : null;
      if (_searchQuery == searchQuery) return;
      _searchQuery = searchQuery;
      searchData?.clear();
      await _searchService
          .searchForItem(
            searchQuery: text,
            type: [
              "album",
              "artist",
              "playlist",
              "track",
              "show",
              "episode",
              "audiobook",
            ],
            market: 'ES',
            limit: 20,
            offset: 0,
          )
          .then((value) =>
              value.tracks?.items?.map((e) => _addTracks(e)).toList());
      notifyListeners();
    });

  }

  void _addTracks(ItemsTracks? item) {
    searchData?.add(
      SearchData(
        title: item?.name,
        subtitle: item?.artists?.map((e) => e.name).toList().join(', '),
        image: item?.album?.images?.first.url,
      ),
    );
  }
}
