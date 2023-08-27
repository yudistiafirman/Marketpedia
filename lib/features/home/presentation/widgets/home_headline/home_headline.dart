import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/colors.dart';

class HomeHeadline extends StatelessWidget {
  final String title;
  final Function() onViewMore;
  const HomeHeadline(
      {super.key, required this.title, required this.onViewMore});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: headline_2,
          ),
          TextButton(
              onPressed: onViewMore,
              child: const Row(
                children: [
                  Text('View More', style: textAction),
                  Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: redColorHeart,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
