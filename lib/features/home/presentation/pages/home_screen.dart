import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketpedia/common/widgets/error_section/error_section.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_state.dart';
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
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  _buildBody() {
    return Column(children: [
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
      _buildList()
    ]);
  }

  _buildList() {
    return BlocBuilder<RemoteProductBloc, RemoteProductState>(
        builder: (_, state) {
      if (state is RemoteProductLoading) {
        return const Center(child: CupertinoActivityIndicator());
      }
      if (state is RemoteProductError) {
        return ErrorSection(errorMessage: state.error?.message);
      }
      if (state is RemoteProductLoaded) {
        final productData = state.products?.table;

        return Expanded(
            child: ListProducts(
          onRefresh: _onRefresh,
          productData: productData!,
        ));
      }
      return const SizedBox();
    });
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
