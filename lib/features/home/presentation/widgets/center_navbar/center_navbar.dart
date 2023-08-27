import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class CenternNavbar extends StatelessWidget {
  final Function() onPress;
  const CenternNavbar({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: white,
            size: navBarIconSize,
          ),
          onPressed: () {}),
    );
  }
}
