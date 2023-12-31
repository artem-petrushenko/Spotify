import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:spotify_client/config/router/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(GoRouterNames.profileView),
          child: const Text('Open Profile'),
        ),
      ),
    );
  }
}
