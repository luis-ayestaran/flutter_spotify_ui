import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';

import 'package:flutter_spotify_ui/src/spotify_app.dart';

void main() async {
  if( !kIsWeb && ( Platform.isWindows || Platform.isLinux || Platform.isMacOS ) ) {
    WidgetsFlutterBinding.ensureInitialized();
    await DesktopWindow.setMinWindowSize( const Size(500, 400) );
  }
  runApp( SpotifyApp() );
}