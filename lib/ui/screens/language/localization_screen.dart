import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/ui/screens/language/localization_model.dart';

import 'package:spotify_client/ui/widgets/list_tile_widget.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<LocalizationViewModel>();
    const localizationList = LocalizationViewModel.localizationList;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            leading: IconButton(
              onPressed: () => model.closeScreen(context),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            title: Text(AppLocalizations.of(context)!.language),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTileWidget(
                title: localizationList[index].name,
                subtitle: localizationList[index].englishName,
                leading: _LocalizationRadioWidget(
                  localizationLanguage:
                      localizationList[index].localizationLanguages,
                ),
              ),
              childCount: localizationList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _LocalizationRadioWidget extends StatelessWidget {
  final LocalizationLanguages localizationLanguage;

  const _LocalizationRadioWidget({
    required this.localizationLanguage,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LocalizationViewModel>();
    return Radio<LocalizationLanguages>(
      value: localizationLanguage,
      groupValue: model.localization,
      onChanged: (LocalizationLanguages? value) =>
          model.setLocalizationData(value ?? localizationLanguage),
    );
  }
}
