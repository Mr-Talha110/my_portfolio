import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/components/content_box.dart';
import 'package:my_portfolio/components/custom_navbar.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/web/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 160),
            alignment: Alignment.center,
            constraints: const BoxConstraints(maxWidth: 1920),
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
                  child: Column(
                    children: [
                      const SizedBox(height: 48),
                      const CustomNavbar(),
                      const SizedBox(height: 400),
                      Text(WebStrings.mainHeading,
                          textAlign: TextAlign.center,
                          style: TextStyling.mainHeadingStyle),
                      const SizedBox(height: 16),
                      Text(WebStrings.mainHeadingDescp,
                          textAlign: TextAlign.center,
                          style: TextStyling.mainHeadingDescpStyle),
                      const SizedBox(height: 120),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              AssetRef.clientLogos.length,
                              (index) => Image.asset(
                                AssetRef.clientLogos[index],
                                height: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 80),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              controller.boxList.length,
                              (index) => ContentBox(
                                numbers: index + 1,
                                contentBox: controller.boxList[index],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 160),
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
