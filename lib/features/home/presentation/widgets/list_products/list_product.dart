import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/common/widgets/product_card/product_card.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({super.key});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 12,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            isCart: false,
            onTapProduct: () => GoRouter.of(context).go('/detail'),
          );
        },
      ),
    );
  }
}
