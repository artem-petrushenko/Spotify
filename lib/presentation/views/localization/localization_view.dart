import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:spotify_client/presentation/bloc/cubits/localization/localization_cubit.dart';

import 'package:spotify_client/ui/widgets/list_tile_widget.dart';

class LocalizationView extends StatelessWidget {
  static const localizationList = <LocalizationModel>[
    LocalizationModel(
        englishName: 'English',
        name: 'English',
        localizationLanguages: LocalizationLanguages.english),
    LocalizationModel(
        englishName: 'Russian',
        name: 'Русский',
        localizationLanguages: LocalizationLanguages.russian),
    LocalizationModel(
        englishName: 'Ukrainian',
        name: 'Українська',
        localizationLanguages: LocalizationLanguages.ukrainian),
    LocalizationModel(
        englishName: 'Chinese',
        name: '中国人',
        localizationLanguages: LocalizationLanguages.chinese),
    LocalizationModel(
        englishName: 'Belarusian',
        name: 'Беларускі',
        localizationLanguages: LocalizationLanguages.belarusian),
    LocalizationModel(
        englishName: 'Czech',
        name: 'Čeština',
        localizationLanguages: LocalizationLanguages.czech),
    LocalizationModel(
        englishName: 'Polish',
        name: 'Polský',
        localizationLanguages: LocalizationLanguages.polish),
    LocalizationModel(
        englishName: 'Swedish',
        name: 'Svenska',
        localizationLanguages: LocalizationLanguages.swedish),
    LocalizationModel(
        englishName: 'Serbian',
        name: 'Спрски',
        localizationLanguages: LocalizationLanguages.serbian),
    LocalizationModel(
        englishName: 'Italian',
        name: 'Italiano',
        localizationLanguages: LocalizationLanguages.italian),
    LocalizationModel(
        englishName: 'Indonesian',
        name: 'Bahasa Indonesia',
        localizationLanguages: LocalizationLanguages.indonesian),
    LocalizationModel(
        englishName: 'Hungarian',
        name: 'Magyar',
        localizationLanguages: LocalizationLanguages.hungarian),
    LocalizationModel(
        englishName: 'German',
        name: 'Deutsch',
        localizationLanguages: LocalizationLanguages.german),
  ];

  const LocalizationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
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
    final cubit = context.watch<LocalizationCubit>();
    return Radio<LocalizationLanguages>(
      value: localizationLanguage,
      groupValue: cubit.state.localization,
      onChanged: (LocalizationLanguages? value) =>
          cubit.setLocalizationData(value ?? localizationLanguage),
    );
  }
}
