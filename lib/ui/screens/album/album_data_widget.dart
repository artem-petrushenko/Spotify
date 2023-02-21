import 'package:flutter/material.dart';

class AlbumDataWidget extends StatelessWidget {
  const AlbumDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('30 july 2021y'),
          Row(
            children: const [
              Text(
                '16 tracks',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text('•'),
              Text(
                '56 min. 15 sec.',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
