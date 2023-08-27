import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/colors.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: darkBg,
    shape: CircleBorder(),
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
      color: darkBg,
      shape: CircularNotchedRectangle(),
      height: kBottomNavigationBarHeight * 1.3),
);
