import 'package:flutter/material.dart';
import 'package:weather_space/views/home_page/home_page.dart';

import 'consts/theme/dark_theme.dart';
import 'consts/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: homePage()
    );
  }
}