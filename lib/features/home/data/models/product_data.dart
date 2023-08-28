import 'package:equatable/equatable.dart';
import 'package:marketpedia/features/home/data/models/product.dart';
import 'package:marketpedia/features/home/data/models/total_page.dart';
import 'package:marketpedia/features/home/domain/entities/product_data.dart';

class ProductDataModel extends ProductDataEntity {
  const ProductDataModel({
    List<ProductModel>? productData,
    List<TotalPageModel>? pageData,
  }) : super(productData, pageData);

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return ProductDataModel(
      productData: List<ProductModel>.from(
          json['Table'].map((x) => ProductModel.fromJson(x))),
      pageData: List<TotalPageModel>.from(
          json['Table1'].map((x) => TotalPageModel.fromJson(x))),
    );
  }
}
