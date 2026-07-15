import 'package:flutter/material.dart';
import 'package:info_app/app/app_routers.dart';
import 'package:info_app/core/theming/theming.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouters.initialRoute,
      routes: AppRouters.routes,
      theme: Theming.lightTheme,
      darkTheme: Theming.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
