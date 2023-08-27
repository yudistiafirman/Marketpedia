import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({super.key});

  @override
  State<ListCategories> createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  int _currentIndex = 0;
  final iconData = [
    Icons.laptop,
    Icons.headphones,
    Icons.mouse,
    Icons.tv,
    Icons.watch,
    Icons.wallet,
    Icons.phone_android,
    Icons.games_sharp,
    Icons.shop
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final items = iconData[index];
          return _buildListItem(index, items);
        },
      ),
    );
  }

  _buildListItem(int idx, IconData icons) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = idx;
        });
      },
      child: Container(
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius - 6),
            color: _currentIndex == idx ? grey400 : grey200),
        margin: const EdgeInsets.only(right: 12),
        child: Center(
          child: Icon(icons),
        ),
      ),
    );
  }
}
