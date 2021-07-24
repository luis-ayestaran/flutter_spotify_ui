
import 'package:flutter/material.dart';

import 'package:flutter_spotify_ui/routes/routes.dart';
import 'package:flutter_spotify_ui/theme/app_theme.dart';
 
class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify UI',
      routes: getAppRoutes(),
      initialRoute: 'home_screen',
      darkTheme: buildDarkThemeData(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}