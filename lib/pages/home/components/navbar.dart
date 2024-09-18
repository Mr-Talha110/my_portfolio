import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/services/theme_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const NavBarDesktop(),
      mobile: (_) => const NavBarDesktop(
        isMobile: true,
      ),
    );
  }
}

class NavBarDesktop extends StatelessWidget {
  final bool isMobile;
  const NavBarDesktop({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetRef.logo,
          width: 40,
        ),
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
      horizontal: isMobile ? WebSize.s24 : WebSize.s104,
      top: WebSize.s50,
      bottom: WebSize.s80,
    );
  }
}
