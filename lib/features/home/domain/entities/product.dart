import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int no;
  final String productId;
  final String productName;
  final String productDescription;
  final String productValue;
  final String productType;
  final String productPhoto;

  const ProductEntity({
    required this.no,
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.productValue,
    required this.productType,
    required this.productPhoto,
  });

  @override
  List<Object?> get props {
    return [
      no,
      productId,
      productName,
      productDescription,
      productValue,
      productType,
      productPhoto
    ];
  }
}
