import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/album/album_model.dart';

class AlbumAppBarWidget extends StatelessWidget {
  const AlbumAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AlbumViewModel>();
    return SliverAppBar(
      elevation: 0.0,
      toolbarHeight: 60.0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: model.isSliverAppBarExpanded
          ? const Text(
              'The Sacrament of Sin',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            )
          : null,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(20.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: const Center(
            child: Text(
              'Text',
              style: TextStyle(),
            ),
          ),
        ),
      ),
      pinned: true,
      backgroundColor: Colors.brown.shade800,
      expandedHeight: 360.0,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: FlexibleSpaceBar(
          background: Image.asset(
            'assets/images/album_big.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
