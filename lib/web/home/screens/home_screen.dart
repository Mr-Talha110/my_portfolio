import 'package:flutter/material.dart';
import 'package:my_portfolio/components/custom_navbar.dart';
import 'package:my_portfolio/services/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AssetRef.person,
                width: 880,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Column(
                children: [
                  SizedBox(height: 48),
                  CustomNavbar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
