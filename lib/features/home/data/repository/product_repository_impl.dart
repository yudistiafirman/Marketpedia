import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:marketpedia/core/constant/constant.dart';
import 'package:marketpedia/core/resources/data_state.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service.dart';
import 'package:marketpedia/features/home/data/models/product_data.dart';
import 'package:marketpedia/features/home/domain/repository/product_repository.dart';

class ProductRepositoryImplementation implements ProductRepository {
  final ProductApiService _productApiService;
  ProductRepositoryImplementation(this._productApiService);
  @override
  Future<DataState<ProductDataModel>> getProductsData(String page) async {
    try {
      final requestBody = {
        "KEY": key,
        "pemail": email,
        "pmethod": getMethod,
        "pwhere6": page,
        "pwhere7": "10"
      };

      final httpResponse =
          await _productApiService.getProductsData(requestBody);

      if (httpResponse.statusCode == HttpStatus.ok) {
        final productData = json.decode(httpResponse.body)['data'];
        final productDataModel =
            ProductDataModel.fromJson(json.decode(productData));

        return DataSuccess(productDataModel);
      } else {
        return DataFailed(ClientException(httpResponse.body));
      }
    } on ClientException catch (e) {
      return DataFailed(e);
    }
  }
}
