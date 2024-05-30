import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/widgets/web_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InterestedSection extends StatelessWidget {
  const InterestedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const InterestedSectionDesktop(),
      mobile: (_) => const InterestedSectionMobile(),
    );
  }
}

class InterestedSectionDesktop extends StatelessWidget {
  const InterestedSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: WebSize.s104, vertical: WebSize.s48),
      padding: const EdgeInsets.symmetric(
          horizontal: WebSize.s40, vertical: WebSize.s48),
      decoration: const BoxDecoration(
          color: WebColors.grey,
          borderRadius: BorderRadius.all(Radius.circular(WebSize.s12))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SelectableText(
              WebStrings.interestedWorking,
              style: TextStyling.lightBoldText,
            ),
          ),
          SizedBox(height: WebSize.s10),
          Row(
            children: [
              WebButton(
                title: WebStrings.seeProjects,
                borderColor: WebColors.orange,
                textColor: WebColors.orange,
                noElevation: true,
              ),
              SizedBox(width: WebSize.s8),
              WebButton(
                title: WebStrings.emailMe,
                textColor: WebColors.white,
                bgColor: WebColors.orange,
                noElevation: true,
                isIcon: true,
                icon: WebIcons.emailIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InterestedSectionMobile extends StatelessWidget {
  const InterestedSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: WebSize.s48),
      padding: const EdgeInsets.symmetric(
          horizontal: WebSize.s40, vertical: WebSize.s48),
      decoration: const BoxDecoration(
          color: WebColors.grey,
          borderRadius: BorderRadius.all(Radius.circular(WebSize.s12))),
      child: Wrap(
        children: [
          const SelectableText(
            WebStrings.interestedWorking,
            style: TextStyling.lightBoldText,
          ).paddingBottom(WebSize.s32),
          const SizedBox(height: WebSize.s10),
          const Row(
            children: [
              WebButton(
                title: WebStrings.seeProjects,
                borderColor: WebColors.orange,
                textColor: WebColors.orange,
                noElevation: true,
              ),
              SizedBox(width: WebSize.s8),
              WebButton(
                title: WebStrings.emailMe,
                textColor: WebColors.white,
                bgColor: WebColors.orange,
                noElevation: true,
                isIcon: true,
                icon: WebIcons.emailIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
