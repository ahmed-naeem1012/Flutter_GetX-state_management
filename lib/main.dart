// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_getx/languages.dart';
import 'package:flutter_getx/secondexample/second_example.dart';
import 'package:flutter_getx/statemanagement.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        // locale: Locale('en', 'US'),
        translations: Languages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyWidget());
  }
}
