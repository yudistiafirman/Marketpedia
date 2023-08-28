import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:marketpedia/core/resources/data_state.dart';
import 'package:marketpedia/features/home/domain/usecase/get_product.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_event.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_state.dart';

class RemoteProductBloc extends Bloc<RemoteProductEvent, RemoteProductState> {
  final GetProductUseCase _getProductUseCase;
  RemoteProductBloc(this._getProductUseCase)
      : super(const RemoteProductLoading()) {
    on<GetProduct>(getProduct);
  }

  FutureOr<void> getProduct(
      GetProduct event, Emitter<RemoteProductState> emit) async {
    final dataState = await _getProductUseCase(params: event.page);

    if (dataState is DataSuccess) {
      emit(RemoteProductLoaded(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteProductError(dataState.error!));
    }
  }
}
