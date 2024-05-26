import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';

class ServiceBox extends StatelessWidget {
  final String title;
  final String descp;
  final String icon;
  const ServiceBox(
      {super.key,
      required this.descp,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 5.0,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: WebColors.white,
                  borderRadius: BorderRadius.circular(WebSize.s32)),
              padding: const EdgeInsets.only(
                  left: WebSize.s32,
                  bottom: WebSize.s32,
                  right: WebSize.s32,
                  top: WebSize.s64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyling.blueTitleText,
                  ),
                  const SizedBox(height: WebSize.s24),
                  Text(
                    descp,
                    style: TextStyling.descpText,
                  )
                ],
              ),
            ),
            Positioned(
              left: WebSize.s4,
              child: SvgPicture.asset(
                icon,
                width: WebSize.s64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
