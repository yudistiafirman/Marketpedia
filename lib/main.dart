import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketpedia/app.dart';
import 'package:marketpedia/core/service_locator.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );
  serviceLocatorInit();
  runApp(const App());
}
