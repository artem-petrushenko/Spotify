import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:spotify_client/src/core/logger.dart';
import 'package:spotify_client/src/core/utils/app_bloc_observer.dart';
import 'package:spotify_client/src/feature/initialization/logic/initialization_processor.dart';
import 'package:spotify_client/src/feature/initialization/logic/initialization_steps.dart';
import 'package:spotify_client/src/feature/initialization/model/initialization_hook.dart';
import 'package:spotify_client/src/feature/app/widget/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:spotify_client/locator.dart';

/// A class which is responsible for initialization and running the app.
final class AppRunner
    with
        InitializationSteps,
        InitializationProcessor,
        InitializationFactoryImpl {
  /// Start the initialization and in case of success run application
  Future<void> initializeAndRun(InitializationHook hook) async {

    final bindings = WidgetsFlutterBinding.ensureInitialized()
      ..deferFirstFrame();
    await AppDI.initGetIt();
    // Preserve splash screen
    FlutterNativeSplash.preserve(widgetsBinding: bindings);

    // Override logging
    FlutterError.onError = logger.logFlutterError;
    PlatformDispatcher.instance.onError = logger.logPlatformDispatcherError;

    // Setup bloc observer and transformer
    Bloc.observer = const AppBlocObserver();
    Bloc.transformer = sequential();

    final result = await processInitialization(
      steps: initializationSteps,
      hook: hook,
      factory: this,
    );

    bindings.allowFirstFrame();

    // Attach this widget to the root of the tree.
    App(result: result).attach(FlutterNativeSplash.remove);
  }
}
