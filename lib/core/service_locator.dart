import 'package:get_it/get_it.dart';
import 'package:marketpedia/config/routes/app_routes.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service_impl.dart';
import 'package:marketpedia/features/home/data/repository/product_repository_impl.dart';
import 'package:marketpedia/features/home/domain/repository/product_repository.dart';
import 'package:marketpedia/features/home/domain/usecase/get_product.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> serviceLocatorInit() async {
  getIt.registerFactory(() => GoRouterProvider());
  getIt.registerSingleton<http.Client>(http.Client());
  getIt.registerSingleton<ProductApiService>(ProductApiServiceImpl(getIt()));
  getIt.registerSingleton<ProductRepository>(
      ProductRepositoryImplementation(getIt()));
  getIt.registerSingleton<GetProductUseCase>(GetProductUseCase(getIt()));
  getIt.registerFactory(() => RemoteProductBloc(getIt()));
}
