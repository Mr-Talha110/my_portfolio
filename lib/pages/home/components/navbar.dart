import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/services/theme_provider.dart';
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
        Text(WebStrings.blog,
            style: TextStyling.navBarText
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        const SizedBox(width: WebSize.s40),
        Text(WebStrings.projects,
            style: TextStyling.navBarText
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        const Spacer(),
        Consumer(
          builder: (context, ref, child) {
            return Switch.adaptive(
              activeColor: WebColors.light,
              inactiveTrackColor: WebColors.lightgGrey,
              activeTrackColor: WebColors.lightgGrey,
              inactiveThumbImage: const AssetImage(WebIcons.lightIcon),
              activeThumbImage: const AssetImage(WebIcons.darkIcon),
              value:
                  ref.read(themeModeProvider.notifier).state == ThemeMode.dark
                      ? true
                      : false,
              onChanged: (_) {
                ref.read(themeModeProvider.notifier).update((state) =>
                    state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
              },
            );
          },
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
