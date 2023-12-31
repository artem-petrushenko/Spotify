import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/config/router/router.dart';

class SettingViewModel extends ChangeNotifier {
  Future<void> logout(BuildContext context) async {
    context.go(GoRouterNames.loaderScreen);
  }

  void openLocalization(BuildContext context) =>
      context.push(GoRouterNames.localizationScreen);

  void openTheme(BuildContext context) =>
      context.push(GoRouterNames.themeScreen);
}
