import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/pages/home/components/custom_navbar.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/pages/home/components/section2.dart';
import '../components/section1.dart';
import '../provider/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: WebSize.s160),
            alignment: Alignment.center,
            constraints: const BoxConstraints(maxWidth: WebSize.s1920),
            child: Stack(
              children: [
                //BACKGROUND IMAGE
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AssetRef.person,
                    width: WebSize.s880,
                  ),
                ),
                //MAIN SECTION
                Container(
                  alignment: Alignment.topCenter,
                  child: const Column(
                    children: [
                      SizedBox(height: WebSize.s48),
                      CustomNavbar(),
                      Section1(),
                      Section2(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
