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
    return Stack(
      children: [
        Container(
          width: WebSize.s280,
          padding: const EdgeInsets.symmetric(vertical: WebSize.s30),
          child: Material(
            color: WebColors.transparent,
            elevation: 5.0,
            borderRadius: const BorderRadius.all(Radius.circular(WebSize.s32)),
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(WebSize.s32)),
              padding: const EdgeInsets.only(
                  left: WebSize.s32,
                  bottom: WebSize.s32,
                  right: WebSize.s32,
                  top: WebSize.s64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    title,
                    style: TextStyling.blueTitleText
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: WebSize.s24),
                  SelectableText(
                    descp,
                    style: TextStyling.descpText,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: WebSize.s30,
          child: SvgPicture.asset(
            icon,
            width: WebSize.s64,
            colorFilter: ColorFilter.mode(
                Theme.of(context).primaryColor, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
