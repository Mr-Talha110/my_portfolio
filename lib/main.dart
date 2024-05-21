import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/web/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: WebFonts.satoshiRegular,
        useMaterial3: false,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: WebColors.brownColor),
      ),
      home: HomeScreen(),
    );
  }
}
