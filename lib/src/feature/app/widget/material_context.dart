import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/config/router/router.dart';
import 'package:spotify_client/config/themes/app_theme.dart';

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme(colorScheme: Colors.greenAccent);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: ThemeMode.dark,
      theme: theme.light,
      darkTheme: theme.dark,
      // locale: Locale(localizationUnicode, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: MainGoRouter.router.routerDelegate,
      routeInformationParser: MainGoRouter.router.routeInformationParser,
      routeInformationProvider: MainGoRouter.router.routeInformationProvider,
      backButtonDispatcher: MainGoRouter.router.backButtonDispatcher,
    );
  }
}
