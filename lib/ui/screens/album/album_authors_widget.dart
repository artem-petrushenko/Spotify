import 'package:flutter/material.dart';

class AlbumAuthorsWidget extends StatelessWidget {
  const AlbumAuthorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) => _AuthorItemWidget(index: index),
        childCount: 2,
      ),
    );
  }
}

class _AuthorItemWidget extends StatelessWidget {
  final int index;

  const _AuthorItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(48.0)),
          child: Image.asset(
            'assets/images/artist.png',
            width: 48.0,
            height: 48.0,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8.0),
        Text('Author ${index + 1}'),
      ],
    );
  }
}
