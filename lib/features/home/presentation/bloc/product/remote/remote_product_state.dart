import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:marketpedia/features/home/domain/entities/product_data.dart';

abstract class RemoteProductState extends Equatable {
  final ProductDataEntity? products;

  final ClientException? error;

  const RemoteProductState({this.products, this.error});
  @override
  List<Object> get props => [products!, error!];
}

class RemoteProductLoading extends RemoteProductState {
  const RemoteProductLoading();
}

class RemoteProductLoaded extends RemoteProductState {
  const RemoteProductLoaded(ProductDataEntity product)
      : super(products: product);
}

class RemoteProductError extends RemoteProductState {
  const RemoteProductError(ClientException error) : super(error: error);
}
