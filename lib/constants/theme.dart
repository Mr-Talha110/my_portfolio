import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,
    colorScheme: const ColorScheme.light(
        surface: WebColors.light,
        primary: WebColors.blueish,
        onPrimary: WebColors.dividerGrey,
        onSecondary: WebColors.darkGrey,
        secondary: WebColors.grey),
    cardColor: WebColors.white,
    canvasColor: WebColors.grey,
    primaryColor: WebColors.blueish,
    fontFamily: WebFonts.satoshiRegular);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    colorScheme: const ColorScheme.dark(
        surface: WebColors.darkGrey,
        primary: WebColors.light,
        onPrimary: WebColors.white,
        onSecondary: WebColors.white,
        secondary: WebColors.white),
    cardColor: WebColors.grey,
    primaryColor: WebColors.orange,
    canvasColor: WebColors.light,
    fontFamily: WebFonts.satoshiRegular);
