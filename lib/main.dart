import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/locator.dart';

import 'package:spotify_client/presentation/bloc/cubits/localization/localization_cubit.dart';
import 'package:spotify_client/presentation/bloc/cubits/theme/theme_cubit.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';

import 'package:spotify_client/my_bloc_observer.dart';

Future<void> main() async {
  // debugRepaintRainbowEnabled = true;
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await AppDI.initGetIt();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => LocalizationCubit()),
        BlocProvider(create: (BuildContext context) => ThemeCubit()),
      ],
      child: const MyApp(),
    ),
  );
}
