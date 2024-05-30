import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/widgets/hover_animation.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const NavBarDesktop(),
      mobile: (_) => const NavBarMobile(),
    );
  }
}

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetRef.logo,
          width: 40,
        ),
        const Spacer(),
        HoverAnimation(builder: (isHovered) {
          return SelectableText(WebStrings.blog,
              style: TextStyling.navBarText.copyWith(
                  color: isHovered ? WebColors.orange : WebColors.grey));
        }),
        const SizedBox(width: WebSize.s40),
        HoverAnimation(builder: (isHovered) {
          return SelectableText(WebStrings.projects,
              style: TextStyling.navBarText.copyWith(
                  color: isHovered ? WebColors.orange : WebColors.grey));
        }),
        const Spacer(),
        Container(
          width: 78,
          height: 40,
          decoration: const BoxDecoration(
              color: WebColors.lightgGrey,
              borderRadius: BorderRadius.all(Radius.circular(WebSize.s40))),
        )
      ],
    ).paddingHorizontalTopBottom(
        horizontal: WebSize.s104, top: WebSize.s50, bottom: WebSize.s80);
  }
}

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset(AssetRef.logo, width: WebSize.s42),
    ).paddingHorizontalTop(horizontal: 24, top: 35);
  }
}
