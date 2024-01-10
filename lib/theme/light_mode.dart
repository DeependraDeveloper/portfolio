import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.black, // for text color in light mode
    secondary: Colors.grey.shade200, 
    inversePrimary: Colors.grey.shade700,
  ),
  brightness: Brightness.light,
  dividerColor: Colors.white54,
  fontFamily: 'Montserrat',
);
