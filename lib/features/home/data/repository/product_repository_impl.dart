import 'dart:io';

import 'package:dio/dio.dart';
import 'package:marketpedia/core/constant/constant.dart';
import 'package:marketpedia/core/resources/data_state.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service.dart';
import 'package:marketpedia/features/home/data/models/product.dart';
import 'package:marketpedia/features/home/data/models/product_data.dart';
import 'package:marketpedia/features/home/domain/repository/product_repository.dart';

class ProductRepositoryImplementation implements ProductRepository {
  final ProductApiService _productApiService;
  ProductRepositoryImplementation(this._productApiService);
  @override
  Future<DataState<List<ProductDataModel>>> getProductsData(String page) async {
    try {
      final requestBody = {
        "KEY": key,
        "pemail": email,
        "pmethod": getMethod,
        "pwhere6": page,
        "pwhere7": "10"
      };
      print('ini request body $requestBody');
      final httpResponse =
          await _productApiService.getProductsData(requestBody);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        print('ini response ${httpResponse.data}');
        return DataSuccess(httpResponse.data);
      } else {
        print('ini error ${httpResponse.response}');
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      print('ini error catch ${e.message}');
      return DataFailed(e);
    }
  }
}
