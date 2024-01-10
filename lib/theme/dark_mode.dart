import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.white, // for text color in dark mode
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
  brightness: Brightness.dark,
  dividerColor: Colors.white,
  fontFamily: 'Montserrat',
);
