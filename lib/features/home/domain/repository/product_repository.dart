import 'package:marketpedia/core/resources/data_state.dart';
import 'package:marketpedia/features/home/domain/entities/product_data.dart';

abstract class ProductRepository {
  Future<DataState<ProductDataEntity>> getProductsData(String page);
}
