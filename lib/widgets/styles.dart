import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle mediumTextStyle() => GoogleFonts.montserrat(
      color: Colors.white,
      //fontWeight: FontWeight.w500,
      fontSize: 14,
    );

BoxDecoration gradientDecoration(Color color1, Color color2) => BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [color1, color2],
      ),
      borderRadius: BorderRadius.circular(10),
    );

TextStyle largeTextStyle() => GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
