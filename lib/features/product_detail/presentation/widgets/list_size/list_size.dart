import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/colors.dart';

class ListSize extends StatefulWidget {
  const ListSize({super.key});

  @override
  State<ListSize> createState() => _ListSizeState();
}

class _ListSizeState extends State<ListSize> {
  int _currentIndex = 0;
  final listSize = ['S', 'M', 'L', 'XL'];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: listSize.length,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 12);
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentIndex = index;
            });
          },
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: _currentIndex == index ? darkBg : grey200,
                shape: BoxShape.circle,
                border: Border.all(color: darkBg, width: 1)),
            child: Center(
                child: Text(
              listSize[index],
              style: _currentIndex == index ? whiteBoldBodyText : boldBodyText,
            )),
          ),
        );
      },
    );
  }
}
