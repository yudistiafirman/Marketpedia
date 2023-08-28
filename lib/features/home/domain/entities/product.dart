import 'package:equatable/equatable.dart';
import 'package:marketpedia/features/home/domain/entities/total_page.dart';

class ProductEntity extends Equatable {
  final int? no;
  final String? productId;
  final String? productName;
  final String? productDescription;
  final String? productValue;
  final String? productType;
  final String? productPhoto;

  const ProductEntity({
    this.no,
    this.productId,
    this.productName,
    this.productDescription,
    this.productValue,
    this.productType,
    this.productPhoto,
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
