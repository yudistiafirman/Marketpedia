import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class OperationButton extends StatelessWidget {
  final IconData icons;
  final Color? iconColor;
  final Function() onPressOperationButton;
  final Color? bgColor;
  const OperationButton(
      {super.key,
      required this.icons,
      this.iconColor,
      this.bgColor,
      required this.onPressOperationButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius - 6),
            border: Border.all(width: 1, color: border)),
        child: Center(
            child: Icon(
          icons,
          color: iconColor,
          size: 16,
        )),
      ),
    );
  }
}
