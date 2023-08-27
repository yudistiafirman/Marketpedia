import 'package:flutter/material.dart';
import 'package:marketpedia/config/routes/app_routes.dart';
import 'package:marketpedia/config/theme/app_theme.dart';
import 'package:marketpedia/core/service_locator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final route = getIt.get<GoRouterProvider>();
    return MaterialApp.router(
        routerConfig: route.goRouter(), title: 'Marketpedia', theme: appTheme);
  }
}
