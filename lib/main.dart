import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketpedia/app.dart';
import 'package:marketpedia/core/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await serviceLocatorInit();
  runApp(const App());
}
