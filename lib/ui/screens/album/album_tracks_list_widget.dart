import 'package:flutter/material.dart';

class AlbumTracksListWidget extends StatelessWidget {
  const AlbumTracksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) =>
            _AlbumTracksItemWidget(index: index),
        childCount: 10,
      ),
    );
  }
}

class _AlbumTracksItemWidget extends StatelessWidget {
  final int index;

  const _AlbumTracksItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/album_big.png',
          width: 48.0,
          height: 48.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$index'),
              Text('$index'),
            ],
          ),
        ),
        Icon(index % 2 == 0 ? Icons.favorite : Icons.favorite_border),
      ],
    );
  }
}
