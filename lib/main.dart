import 'package:flutter/material.dart';
import 'package:my_portfolio/services/constants.dart';
import 'package:my_portfolio/web/home/screens/home_screen.dart';

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
        fontFamily: AppFonts.satoshiRegular,
        useMaterial3: false,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: AppColors.brownColor),
      ),
      home: const HomeScreen(),
    );
  }
}
