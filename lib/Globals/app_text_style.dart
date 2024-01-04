import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle rubicTextStyle(
      {double fontSize = 20, Color color = Colors.white}) {
    return GoogleFonts.rubik(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle montserratTextStyle(
      {double fontSize = 24, Color color = Colors.white}) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle rubikMonoOneTextStyle(
      {double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMonoOne(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      letterSpacing: 2,
      color: color,
    );
  }

  static TextStyle signikaNegativeTextStyle(
      {double fontSize = 17, Color color = Colors.white}) {
    return GoogleFonts.signikaNegative(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: color,
      letterSpacing: 1,
    );
  }

  static TextStyle comfortaaTextStyle(
      {double fontSize = 17, Color color = Colors.blueGrey}) {
    return GoogleFonts.comfortaa(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: color,
    );
  }
}
