import 'package:equatable/equatable.dart';
import 'package:marketpedia/features/home/domain/entities/product.dart';
import 'package:marketpedia/features/home/domain/entities/total_page.dart';

class ProductDataEntity extends Equatable {
  final List<ProductEntity>? table;
  final List<TotalPageEntity>? table1;
  const ProductDataEntity(this.table, this.table1);

  @override
  List<Object?> get props => [table, table1];
}
