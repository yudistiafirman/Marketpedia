import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Profile',
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
