import 'package:flutter/material.dart';
import 'package:info_app/features/home/ui/home_screen.dart';

class AppRouters {
  AppRouters._();

  static final String initialRoute = Routes.homeScreen.name;

  static Map<String, WidgetBuilder> get routes => {
    Routes.homeScreen.name: (context) => const HomeScreen(),
  };
}

enum Routes { homeScreen }
