import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';

class TextStyling {
  static TextStyle mainHeadingStyle = TextStyle(
      height: 0.8,
      color: WebColors.brownColor,
      fontFamily: WebFonts.satoshiLight,
      fontSize: 160,
      fontWeight: FontWeight.w300);
  static TextStyle mainHeadingDescpStyle = TextStyle(
      color: WebColors.brownColor.withOpacity(0.60),
      fontFamily: WebFonts.chillaxRegular,
      fontSize: 24,
      height: 0.9,
      fontWeight: FontWeight.w300);
  static TextStyle numberingStyle = TextStyle(
      color: WebColors.brownColor.withOpacity(0.60),
      fontFamily: WebFonts.satoshiRegular,
      fontSize: 13,
      fontWeight: FontWeight.w400);
  static TextStyle subHeading1 = TextStyle(
      color: WebColors.brownColor,
      fontFamily: WebFonts.satoshiRegular,
      fontSize: 24,
      fontWeight: FontWeight.w300);
  static TextStyle subHeading2 = TextStyle(
      color: WebColors.brownColor.withOpacity(0.60),
      fontFamily: WebFonts.chillaxRegular,
      fontSize: 16,
      fontWeight: FontWeight.w400);
}
