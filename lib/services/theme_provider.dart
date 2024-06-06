// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/constants/theme.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(lightTheme);
  ThemeData _themeData = lightTheme;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
  }

  toggleTheme() {
    if (_themeData == lightTheme) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
  }

  bool switchValue() {
    if (_themeData == lightTheme) {
      return true;
    } else {
      return false;
    }
  }
}

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) => ThemeNotifier());

final themeModeProvider = StateProvider<ThemeMode>((ref) {
  var theme = ref.watch(themeProvider);
  if (theme == lightTheme) {
    return ThemeMode.light;
  }
  return ThemeMode.dark;
});
