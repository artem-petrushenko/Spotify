import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';

import 'package:spotify_client/ui/theme/theme_model.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<SettingViewModel>();
    final themeModel = context.watch<ThemeModel>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Settings'),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Card(
                  elevation: 0,
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Dark Theme',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Switch(
                        value: themeModel.isDarkTheme,
                        onChanged: (value) => themeModel.setThemeData(value),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => model.logout(context),
                  child: const Text('Exit'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
