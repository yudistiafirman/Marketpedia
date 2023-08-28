import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:marketpedia/features/home/domain/entities/product.dart';
import 'package:marketpedia/features/home/domain/entities/product_data.dart';

abstract class RemoteProductState extends Equatable {
  final List<ProductDataEntity>? products;
  final DioException? error;

  const RemoteProductState({this.products, this.error});
  @override
  List<Object> get props => [products!, error!];
}

class RemoteProductLoading extends RemoteProductState {
  const RemoteProductLoading();
}

class RemoteProductLoaded extends RemoteProductState {
  const RemoteProductLoaded(List<ProductDataEntity> product)
      : super(products: product);
}

class RemoteProductError extends RemoteProductState {
  const RemoteProductError(DioException error) : super(error: error);
}
