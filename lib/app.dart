import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketpedia/config/routes/app_routes.dart';
import 'package:marketpedia/config/theme/app_theme.dart';
import 'package:marketpedia/core/service_locator.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_event.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final route = getIt.get<GoRouterProvider>();
    return BlocProvider<RemoteProductBloc>(
      create: (context) => getIt()..add(const GetProduct('1')),
      child: MaterialApp.router(
          routerConfig: route.goRouter(),
          title: 'Marketpedia',
          theme: appTheme),
    );
  }
}
