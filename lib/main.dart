import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketpedia/config/theme/app_theme.dart';
import 'package:marketpedia/config/theme/colors.dart';
import 'package:marketpedia/features/cart/presentation/pages/cart_screen.dart';
import 'package:marketpedia/features/home/presentation/pages/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marketpedia',
      theme: appTheme,
      home: const CartScreen(),
    );
  }
}
