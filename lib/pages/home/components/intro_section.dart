import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/widgets/web_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const IntroSectionDesktop(),
    );
  }
}

class IntroSectionDesktop extends StatelessWidget {
  const IntroSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: WebSize.s104, vertical: WebSize.s48),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                WebStrings.hiMsg,
                style: TextStyling.orangeSmallText,
              ),
              const Text(
                WebStrings.talha,
                style: TextStyling.blueText,
              ),
              const SizedBox(height: WebSize.s24),
              Container(
                width: WebSize.s80,
                height: WebSize.s8,
                color: WebColors.orange,
              ),
              const SizedBox(height: WebSize.s72),
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
          ),
          const Spacer(),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  WebStrings.homeDescp,
                  style: TextStyling.blueTextHome,
                ),
                SizedBox(height: WebSize.s32),
                Text(
                  WebStrings.homeDescpDetails,
                  style: TextStyling.descpText,
                ),
                SizedBox(height: WebSize.s32),
                Row(
                  children: [
                    WebButton(
                      bgColor: WebColors.orange,
                      title: WebStrings.reachMe,
                    ),
                    SizedBox(width: WebSize.s10),
                    WebButton(
                      isIcon: true,
                      icon: WebIcons.downloadIcon,
                      title: WebStrings.downloadCV,
                      noElevation: true,
                      textColor: WebColors.black,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
