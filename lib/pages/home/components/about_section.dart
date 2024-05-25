import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const AboutSectionDesktop(),
    );
  }
}

class AboutSectionDesktop extends StatelessWidget {
  const AboutSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: WebSize.s104),
      padding: const EdgeInsets.symmetric(
          horizontal: WebSize.s40, vertical: WebSize.s72),
      decoration: const BoxDecoration(
        color: WebColors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Wrap(
        spacing: WebSize.screenWidth(context) * 0.15,
        children: [
          Image.asset(
            AssetRef.illustration,
            width: WebSize.s500,
          ),
          SizedBox(
            width: WebSize.s500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(WebStrings.about,
                    style: TextStyling.orangeSmallText
                        .copyWith(fontSize: WebSize.s18)),
                const SizedBox(height: WebSize.s8),
                Text(WebStrings.whyHireMe,
                    style: TextStyling.blueTextHome
                        .copyWith(color: WebColors.white)),
                const SizedBox(height: WebSize.s32),
                Text(WebStrings.whyHireMeDescp,
                    style: TextStyling.descpText
                        .copyWith(color: WebColors.baseGrey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
