import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/services/app_strings.dart';
import 'package:my_portfolio/services/constants.dart';

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
                      Border.all(color: AppColors.brownColor.withOpacity(0.15)),
                  color: AppColors.brownColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: [
                  SvgPicture.asset(AssetRef.logo),
                  const SizedBox(width: 12),
                  Row(
                    children: [
                      ...List.generate(
                        AppStrings.navBarList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            AppStrings.navBarList[index],
                            style: TextStyle(
                                color: AppColors.brownColor,
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
                        color: AppColors.brownColor,
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
