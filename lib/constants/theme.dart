import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,
    primaryColor: WebColors.light,
    fontFamily: WebFonts.satoshiRegular);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    primaryColor: WebColors.darkGrey,
    fontFamily: WebFonts.satoshiRegular);
