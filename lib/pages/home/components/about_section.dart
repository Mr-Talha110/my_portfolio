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
      mobile: (_) => const AboutSectionDesktop(
        isMobile: true,
      ),
    );
  }
}

class AboutSectionDesktop extends StatelessWidget {
  final bool isMobile;
  const AboutSectionDesktop({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: isMobile ? 0 : WebSize.s104,
        right: isMobile ? 0 : WebSize.s104,
        bottom: WebSize.s32,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: WebSize.s40,
        vertical: WebSize.s72,
      ),
      decoration: const BoxDecoration(
        color: WebColors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Wrap(
        spacing: WebSize.screenWidth(context) * 0.15,
        alignment: WrapAlignment.center,
        children: [
          Image.asset(
            AssetRef.illustration,
            width: WebSize.s500,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                WebStrings.about,
                style: TextStyling.orangeSmallText.copyWith(
                  fontSize: WebSize.s18,
                ),
              ),
              const SizedBox(height: WebSize.s8),
              SelectableText(
                WebStrings.whyHireMe,
                style: TextStyling.blueTextHome.copyWith(
                  color: WebColors.light,
                ),
              ),
              const SizedBox(height: WebSize.s32),
              SelectableText(
                WebStrings.whyHireMeDescp,
                style: TextStyling.descpText.copyWith(
                  color: WebColors.baseGrey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
