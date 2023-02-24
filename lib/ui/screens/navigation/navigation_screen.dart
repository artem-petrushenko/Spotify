import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/theme/theme_model.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeModel = context.watch<ThemeModel>();
    return Scaffold(
      body: Center(
        child: Switch(
          value: themeModel.isDarkTheme,
          onChanged: (value) => themeModel.setThemeData(value),
        ),
      ),
    );
  }
}
