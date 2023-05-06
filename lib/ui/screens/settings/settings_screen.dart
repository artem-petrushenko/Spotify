import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/utils/constants/numbers.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<SettingViewModel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(AppLocalizations.of(context)!.settings),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListTile(
                  onTap: () => model.openTheme(context),
                  dense: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  visualDensity: VisualDensity.comfortable,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                  ),
                  iconColor: Theme.of(context).colorScheme.secondary,
                  leading: const Icon(Icons.color_lens_rounded),
                  title: const Text('Theme'),
                ),
                ListTile(
                  onTap: () => model.openLocalization(context),
                  dense: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  visualDensity: VisualDensity.comfortable,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                  ),
                  iconColor: Theme.of(context).colorScheme.secondary,
                  leading: const Icon(Icons.text_format_rounded),
                  title: Text(AppLocalizations.of(context)!.language),
                ),
                FilledButton(
                  onPressed: () => model.logout(context),
                  child: Text(AppLocalizations.of(context)!.exit),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
