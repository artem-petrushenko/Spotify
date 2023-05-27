import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/locator.dart';
import 'package:spotify_client/presentation/bloc/cubits/localization/localization_cubit.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';

Future<void> main() async {
  // debugRepaintRainbowEnabled = true;
  WidgetsFlutterBinding.ensureInitialized();
  await AppDI.initGetIt();
  runApp(
    // MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(
    //     //   create: (_) => ThemeViewModel(
    //     //     isDarkTheme: true,
    //     //     colorScheme: const Color(0xFF673AB7),
    //     //   ),
    //     // ),
    //     ChangeNotifierProvider(
    //       create: (_) => LocalizationViewModel(
    //         localization: LocalizationLanguages.english,
    //       ),
    //     ),
    //   ],
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => LocalizationCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
