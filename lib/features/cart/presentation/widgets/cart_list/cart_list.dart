import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/product_card/product_card.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 12,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ProductCard(
          isCart: true,
        );
      },
    ));
  }
}
