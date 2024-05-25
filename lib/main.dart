import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'pages/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
