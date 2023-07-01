import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme( 
    // backgroundColor: Colors.red
  ),
  colorScheme:   ColorScheme.dark( 
    brightness: Brightness.dark,
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFFEBEBF5),

  background: Color(0xFF48319D)    
  ),
);