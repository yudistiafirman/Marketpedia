import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_bloc.dart';
import 'package:marketpedia/features/home/presentation/bloc/product/remote/remote_product_event.dart';
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
  void initState() {
    super.initState();

    postData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  Future<void> postData() async {
    try {
      final requestBody = {
        "key": "YhNnM/2K++gp/FMWA+m0Pg==",
        "pmethod": "Get Product",
        "pemail": "JK",
        "pwhere6": "1",
        "pwhere7": "10"
      };
      final response = await Dio().post(
          'https://bs.aossalestrax.co.id/TestProgrammer_Services/api/GetMasterData',
          data: requestBody);
      print(response.data);
    } catch (error) {
      print("Error: $error");
    }
  }

  _buildBody() {
    return BlocBuilder<RemoteProductBloc, RemoteProductState>(
        builder: (_, state) {
      if (state is RemoteProductLoading) {
        return const CupertinoActivityIndicator();
      }
      if (state is RemoteProductError) {
        return const Center(child: Icon(Icons.refresh));
      }
      if (state is RemoteProductLoaded) {
        return Container();
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
