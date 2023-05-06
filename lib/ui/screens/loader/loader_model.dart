import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';

import 'package:spotify_client/config/router/router.dart';

class LoaderViewModel {
  final BuildContext context;

  LoaderViewModel(this.context) {
    checkAuth();
  }

  Future<void> checkAuth() async {
    final isAuth = await GetIt.instance<AbstractAuthService>().isAuth();
    if (isAuth == true) {
      await GetIt.instance<AbstractAuthService>().requestRefreshedAccessToken();
    }

    final nextScreen =
        isAuth ? GoRouterNames.homeScreen : GoRouterNames.onBoardingScreen;
    context.go(nextScreen);
  }
}
