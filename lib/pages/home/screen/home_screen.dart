import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/pages/home/components/about_section.dart';
import 'package:my_portfolio/pages/home/components/intro_section.dart';
import 'package:my_portfolio/pages/home/components/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: WebSize.s1920),
        child: ListView(
          children: const [
            NavBar(),
            SizedBox(height: WebSize.s80),
            IntroSection(),
            SizedBox(height: WebSize.s160),
            AboutSection(),
            SizedBox(height: WebSize.s160),
          ],
        ),
      ),
    ));
  }
}
