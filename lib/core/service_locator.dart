import 'package:get_it/get_it.dart';
import 'package:marketpedia/config/routes/app_routes.dart';

final getIt = GetIt.instance;

void serviceLocatorInit() {
  getIt.registerFactory(() => GoRouterProvider());
}
