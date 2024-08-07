import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/pages/home/repository/home_repository.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../constants/sizes.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const FooterDesktop(),
      mobile: (_) => const FooterMobile(),
    );
  }
}

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: WebSize.s104, vertical: WebSize.s48),
      child: Column(
        children: [
          Divider(color: Theme.of(context).colorScheme.onPrimary),
          const SizedBox(height: WebSize.s32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(
                WebStrings.rightsReserved,
                style: TextStyling.descpText
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Row(
                children: [
                  ...List.generate(
                    WebIcons.socialIcons.length,
                    (index) => GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => HomeRepository().socialLinks(index),
                      child: SvgPicture.asset(
                        WebIcons.socialIcons[index],
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                        width: WebSize.s32,
                      ).paddingRight(WebSize.s24),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: WebSize.s24, vertical: WebSize.s48),
      child: Column(
        children: [
          Divider(color: Theme.of(context).colorScheme.onPrimary),
          const SizedBox(height: WebSize.s32),
          Wrap(
            children: [
              SelectableText(
                WebStrings.rightsReserved,
                style: TextStyling.descpText
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ).paddingBottom(WebSize.s16),
              Row(
                children: [
                  ...List.generate(
                    WebIcons.socialIcons.length,
                    (index) => GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => HomeRepository().socialLinks(index),
                      child: SvgPicture.asset(
                        WebIcons.socialIcons[index],
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                        width: WebSize.s32,
                      ).paddingRight(WebSize.s24),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
