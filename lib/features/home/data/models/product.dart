import 'package:marketpedia/features/home/domain/entities/product.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required int no,
    required String productId,
    required productName,
    required productDescription,
    required String productValue,
    required String productType,
    required String productPhoto,
  }) : super(
            no: no,
            productId: productId,
            productName: productName,
            productDescription: productDescription,
            productValue: productValue,
            productType: productType,
            productPhoto: productPhoto);

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      no: json['NO'] ?? '',
      productId: json['productId'] ?? '',
      productName: json['productName'] ?? '',
      productDescription: json['productDescription'] ?? '',
      productValue: json['productValue'] ?? '',
      productType: json['productType'] ?? '',
      productPhoto: json['productPhoto'] ?? '',
    );
  }
}
