import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/home/presentation/widgets/bottom_navigation_bar/bottom_navbar.dart';
import 'package:marketpedia/features/home/presentation/widgets/carousel/carousel.dart';
import 'package:marketpedia/features/home/presentation/widgets/center_navbar/center_navbar.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [HomeCarousel()],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CenternNavbar(onPress: () {}),
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
