import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marketpedia/config/routes/app_routes.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service.dart';
import 'package:marketpedia/features/home/data/repository/product_repository_impl.dart';
import 'package:marketpedia/features/home/domain/repository/product_repository.dart';
import 'package:marketpedia/features/home/domain/usecase/get_product.dart';

final getIt = GetIt.instance;

Future<void> serviceLocatorInit() async {
  getIt.registerFactory(() => GoRouterProvider());
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ProductApiService>(ProductApiService(getIt()));
  getIt.registerSingleton<ProductRepository>(
      ProductRepositoryImplementation(getIt()));
  getIt.registerSingleton<GetProductUseCase>(GetProductUseCase(getIt()));
}
