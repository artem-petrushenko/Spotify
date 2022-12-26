import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  ); //TODO Remove

  runApp(const MyApp());
}
