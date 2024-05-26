import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
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
          const Divider(color: WebColors.dividerGrey),
          const SizedBox(height: WebSize.s32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                WebStrings.rightsReserved,
                style:
                    TextStyling.descpText.copyWith(color: WebColors.darkGrey),
              ),
              Row(
                children: [
                  ...List.generate(
                    WebIcons.socialIcons.length,
                    (index) => SvgPicture.asset(
                      WebIcons.socialIcons[index],
                      width: WebSize.s32,
                    ).paddingRight(WebSize.s24),
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
          const Divider(color: WebColors.dividerGrey),
          const SizedBox(height: WebSize.s32),
          Wrap(
            children: [
              Text(
                WebStrings.rightsReserved,
                style:
                    TextStyling.descpText.copyWith(color: WebColors.darkGrey),
              ).paddingBottom(WebSize.s16),
              Row(
                children: [
                  ...List.generate(
                    WebIcons.socialIcons.length,
                    (index) => SvgPicture.asset(
                      WebIcons.socialIcons[index],
                      width: WebSize.s32,
                    ).paddingRight(WebSize.s24),
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
