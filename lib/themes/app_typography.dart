import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle orbitron({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: 'Orbitron',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle chakraPetch({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: 'ChakraPetch',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }
  static TextStyle rajdhani({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
  double? height,
  FontStyle? fontStyle,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontFamily: 'Rajdhani',
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    letterSpacing: letterSpacing,
    height: height,
    fontStyle: fontStyle,
    decoration: decoration,
  );
}
}