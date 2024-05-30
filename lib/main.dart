import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/theme.dart';
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
      // darkTheme: darkTheme,
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
