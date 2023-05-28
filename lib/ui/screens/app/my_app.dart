import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/config/router/router.dart';
import 'package:spotify_client/config/themes/app_theme.dart';

import 'package:spotify_client/presentation/bloc/cubits/localization/localization_cubit.dart';
import 'package:spotify_client/presentation/bloc/cubits/theme/theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        context.select((ThemeCubit cubit) => cubit.state.colorScheme);
    final themeMode = context.select((ThemeCubit cubit) => cubit.getThemeMode);
    final localizationUnicode =
        context.select((LocalizationCubit cubit) => cubit.localizationUnicode);
    final theme = AppTheme(colorScheme: colorScheme);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: themeMode,
      theme: theme.light,
      darkTheme: theme.dark,
      locale: Locale(localizationUnicode, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: MainGoRouter.router.routerDelegate,
      routeInformationParser: MainGoRouter.router.routeInformationParser,
      routeInformationProvider: MainGoRouter.router.routeInformationProvider,
      backButtonDispatcher: MainGoRouter.router.backButtonDispatcher,
    );
  }
}
