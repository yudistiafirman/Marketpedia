import 'package:marketpedia/core/resources/data_state.dart';
import 'package:marketpedia/core/usecase/usecase.dart';
import 'package:marketpedia/features/home/domain/entities/product_data.dart';
import 'package:marketpedia/features/home/domain/repository/product_repository.dart';

class GetProductUseCase
    implements UseCase<DataState<ProductDataEntity>, String> {
  final ProductRepository _productRepository;

  GetProductUseCase(this._productRepository);
  @override
  Future<DataState<ProductDataEntity>> call({String? params}) {
    return _productRepository.getProductsData(params ?? '1');
  }
}
