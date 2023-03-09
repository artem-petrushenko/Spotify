import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/ui/screens/language/localization_model.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LocalizationViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.language),
      ),
      body: Column(
        children: [
          ListTile(
            title:
                Text('English', style: Theme.of(context).textTheme.labelLarge),
            subtitle:
                Text('English', style: Theme.of(context).textTheme.labelSmall),
            leading: Radio<LocalizationLanguages>(
              value: LocalizationLanguages.english,
              groupValue: model.localization,
              onChanged: (LocalizationLanguages? value) => model
                  .setLocalizationData(value ?? LocalizationLanguages.english),
            ),
          ),
          ListTile(
            title:
                Text('Русский', style: Theme.of(context).textTheme.labelLarge),
            subtitle:
                Text('Russian', style: Theme.of(context).textTheme.labelSmall),
            leading: Radio<LocalizationLanguages>(
              value: LocalizationLanguages.russian,
              groupValue: model.localization,
              onChanged: (LocalizationLanguages? value) => model
                  .setLocalizationData(value ?? LocalizationLanguages.english),
            ),
          ),
        ],
      ),
    );
  }
}
