import 'package:http/http.dart' as http;
import 'package:marketpedia/core/constant/constant.dart';
import 'package:marketpedia/features/home/data/data_sources/remote/product_api_service.dart';

class ProductApiServiceImpl implements ProductApiService {
  final http.Client _client;

  ProductApiServiceImpl(this._client);
  @override
  Future<http.Response> getProductsData(
      Map<String, dynamic> requestBody) async {
    const path = 'TestProgrammer_Services/api/GetMasterData';
    final response =
        await _client.post(Uri.https(aosBaseUrl, path), body: requestBody);
    return response;
  }
}
