import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme( 
    backgroundColor: Colors.red
  ),
  colorScheme: const ColorScheme.dark( 
    brightness: Brightness.dark,
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFFEBEBF5),
    

  )
);