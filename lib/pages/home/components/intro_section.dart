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
      mobile: (_) => const IntroSectionMobile(),
    );
  }
}

class IntroSectionDesktop extends StatelessWidget {
  const IntroSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          horizontal: WebSize.s104, vertical: WebSize.s48),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: WebSize.s200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SelectableText(
                  WebStrings.hiMsg,
                  style: TextStyling.orangeSmallText,
                ),
                const SelectableText(
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
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: WebSize.s500),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  WebStrings.homeDescp,
                  style: TextStyling.blueTextHome,
                ),
                SizedBox(height: WebSize.s32),
                SelectableText(
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
    ).paddingBottom(WebSize.s100);
  }
}

class IntroSectionMobile extends StatelessWidget {
  const IntroSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AssetRef.avatar,
            width: WebSize.s370,
          ),
        ),
        const SizedBox(height: WebSize.s24),
        SelectableText(
          WebStrings.hiIamTalha,
          style: TextStyling.orangeSmallText.copyWith(
              fontSize: WebSize.s20, fontFamily: WebFonts.satoshiMedium),
        ),
        const SizedBox(height: WebSize.s16),
        SelectableText(
          WebStrings.homeDescp,
          style: TextStyling.blueTextHome.copyWith(fontSize: WebSize.s30),
        ),
        const SizedBox(height: WebSize.s32),
        const SelectableText(
          WebStrings.homeDescpDetails,
          style: TextStyling.descpText,
        ),
        const SizedBox(height: WebSize.s32),
        const Row(
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
        ),
        const SizedBox(height: WebSize.s32),
        Row(
          children: [
            ...List.generate(
                WebIcons.socialIcons.length,
                (index) => SvgPicture.asset(
                      WebIcons.socialIcons[index],
                      width: WebSize.s32,
                    ).paddingRight(WebSize.s24))
          ],
        ),
      ],
    ).paddingHorizontalTopBottom(
        top: WebSize.s80, horizontal: WebSize.s24, bottom: WebSize.s32);
  }
}
