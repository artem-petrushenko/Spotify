import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';

import 'package:spotify_client/ui/navigation/router.dart';

class SettingViewModel extends ChangeNotifier {
  Future<void> logout(BuildContext context) async {
    GetIt.instance<AbstractAuthService>().logout();
    context.go(GoRouterNames.loaderScreen);
  }

  void openLocalization(BuildContext context) =>
      context.push(GoRouterNames.localizationScreen);

  void openTheme(BuildContext context) =>
      context.push(GoRouterNames.themeScreen);
}
