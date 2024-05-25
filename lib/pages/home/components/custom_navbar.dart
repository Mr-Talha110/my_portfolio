import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../constants/sizes.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => Container(),
      desktop: (context) => const NavBarDesktop(),
    );
  }
}

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: WebSize.s30, sigmaY: WebSize.s30),
            child: Container(
              padding: const EdgeInsets.only(
                  top: WebSize.s12,
                  bottom: WebSize.s12,
                  right: WebSize.s12,
                  left: WebSize.s24),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: WebColors.brownColor.withOpacity(0.15)),
                  color: WebColors.brownColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(WebSize.s2)),
              child: Row(
                children: [
                  SvgPicture.asset(AssetRef.logo),
                  const SizedBox(width: WebSize.s12),
                  Row(
                    children: [
                      ...List.generate(
                        WebStrings.navBarList.length,
                        (index) => Text(
                          WebStrings.navBarList[index],
                          style: TextStyle(
                              color: WebColors.brownColor,
                              fontSize: WebSize.s13,
                              fontWeight: FontWeight.w400),
                        ).paddingLeft(WebSize.s20),
                      )
                    ],
                  ),
                  const SizedBox(width: WebSize.s16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: WebSize.s10, horizontal: WebSize.s16),
                    decoration: BoxDecoration(
                        color: WebColors.brownColor,
                        borderRadius: BorderRadius.circular(WebSize.s2)),
                    child: const Text(
                      WebStrings.letsTalk,
                      style: TextStyle(
                          fontSize: WebSize.s13, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
