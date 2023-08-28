import 'package:http/http.dart' as http;

abstract class ProductApiService {
  Future<http.Response> getProductsData(Map<String, dynamic> responseBody);
}
