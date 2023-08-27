import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketpedia/common/widgets/image_container/image_container.dart';
import 'package:marketpedia/common/widgets/rating_button/rating_button.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/product_detail/presentation/widgets/add_to_cart_btn/add_to_cart_btn.dart';
import 'package:marketpedia/features/product_detail/presentation/widgets/list_size/list_size.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: ImageContainer(
                    imageUrl:
                        'https://images.unsplash.com/photo-1546502208-81d149d52bd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2946&q=80'),
              )),
          const SizedBox(height: 12),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cooper Mount Bike',
                        style: commonHeadline,
                      ),
                      RatingButton()
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp.250',
                    style: commonHeadline,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('- Scalpel Hi-mod Ultimate Cooper Mountain'),
                  SizedBox(height: 24),
                  Text(
                    'Size',
                    style: commonHeadline,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(child: const ListSize()),
                ],
              )),
          SizedBox(
            height: 12,
          ),
          const AddToCartBtn(),
          SizedBox(
            height: 24,
          ),
        ]),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Cooper Mount Bike',
        style: commonHeadline,
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => GoRouter.of(context).go('/'),
        child: const Icon(
          Icons.chevron_left_outlined,
          size: appbarIconSize,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.favorite,
              size: appbarIconSize,
              color: grey200,
            ),
          ),
        )
      ],
    );
  }
}
