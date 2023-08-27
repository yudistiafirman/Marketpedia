import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_theme.dart';
import 'package:marketpedia/features/home/presentation/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}
