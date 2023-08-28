import 'package:dio/dio.dart';
import 'package:marketpedia/core/constant/constant.dart';
import 'package:marketpedia/features/home/data/models/product_data.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_service.g.dart';

@RestApi(baseUrl: aosBaseUrl)
abstract class ProductApiService {
  factory ProductApiService(Dio dio) = _ProductApiService;

  @POST('/TestProgrammer_Services/api/GetMasterData')
  Future<HttpResponse<List<ProductDataModel>>> getProductsData(
      @Body() Map<String, dynamic> responseBody);
}
