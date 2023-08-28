import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/common/widgets/product_card/product_card.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/features/home/domain/entities/product.dart';

class ListProducts extends StatelessWidget {
  final List<ProductEntity> productData;
  final Future<void> Function() onRefresh;
  const ListProducts(
      {super.key, required this.productData, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    if (productData.isEmpty) {
      return const Center(
        child: Text(
          'No Data',
          style: lightBodyText,
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 12,
          ),
          itemCount: productData.length,
          itemBuilder: (context, index) {
            final productItem = productData.elementAt(index);
            final productName = productItem.productName;
            final productPhoto = productItem.productPhoto;
            final productPrice = productItem.productValue;
            return ProductCard(
              productName: productName,
              productPhoto: productPhoto,
              productPrice: productPrice,
              isCart: false,
              onTapProduct: () => GoRouter.of(context).go('/detail'),
            );
          },
        ),
      ),
    );
  }
}
