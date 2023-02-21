import 'package:flutter/material.dart';

class AlbumCopyrightsWidget extends StatelessWidget {
  const AlbumCopyrightsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Copyright 1'),
          Text('Copyright 2'),
        ],
      ),
    );
  }
}
