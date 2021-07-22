import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/screens/screens.dart';

typedef AppRoutes = Map<String, WidgetBuilder>;

AppRoutes getAppRoutes() {

  return {
    'home_screen'   :   (_) => HomeScreen(),
  };

}