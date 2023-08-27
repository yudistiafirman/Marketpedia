import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/home/presentation/widgets/carousel/carousel.dart';
import 'package:marketpedia/features/home/presentation/widgets/home_headline/home_headline.dart';
import 'package:marketpedia/features/home/presentation/widgets/list_categories/list_categories.dart';
import 'package:marketpedia/features/home/presentation/widgets/list_products/list_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          const HomeCarousel(),
          HomeHeadline(
            title: 'Top Categories',
            onViewMore: () {},
          ),
          const ListCategories(),
          HomeHeadline(
            title: 'New Arrivals',
            onViewMore: () {},
          ),
          const Expanded(child: const ListProducts())
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Marketpedia',
        style: headline_1,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              color: darkBg,
              Icons.favorite_outline,
              size: navBarIconSize,
            ))
      ],
    );
  }
}
