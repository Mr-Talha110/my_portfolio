import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/constants/constants.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, right: 12, left: 24),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: WebColors.brownColor.withOpacity(0.15)),
                  color: WebColors.brownColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: [
                  SvgPicture.asset(AssetRef.logo),
                  const SizedBox(width: 12),
                  Row(
                    children: [
                      ...List.generate(
                        WebStrings.navBarList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            WebStrings.navBarList[index],
                            style: TextStyle(
                                color: WebColors.brownColor,
                                fontSize: 13,
                                // fontFamily: AppFonts.satoshiBold,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    decoration: BoxDecoration(
                        color: WebColors.brownColor,
                        borderRadius: BorderRadius.circular(2)),
                    child: const Text(
                      'LET\'S TALK',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
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
