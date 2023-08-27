import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class RatingButton extends StatelessWidget {
  const RatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
            color: imperialRed,
            borderRadius: BorderRadius.circular(borderRadius - 4)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_border_outlined, color: white, size: 18),
              SizedBox(
                width: 4,
              ),
              Text(
                '3.8',
                style: whiteLightText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
