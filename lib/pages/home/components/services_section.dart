import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/widgets/service_box.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const ServicesSectionDesktop(),
    );
  }
}

class ServicesSectionDesktop extends StatelessWidget {
  const ServicesSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: WebSize.s104, right: WebSize.s104, bottom: WebSize.s32),
      padding: const EdgeInsets.symmetric(vertical: WebSize.s48),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(WebStrings.services,
                    style: TextStyling.orangeSmallText
                        .copyWith(fontSize: WebSize.s18)),
                const SizedBox(height: WebSize.s8),
                const Text(
                  WebStrings.bestSolution,
                  style: TextStyling.blueTextHome,
                ),
                const SizedBox(height: WebSize.s32),
                const Text(
                  WebStrings.areYourPro,
                  style: TextStyling.descpText,
                ),
                const SizedBox(height: WebSize.s8),
                const Text(
                  WebStrings.rightPlace,
                  style: TextStyling.greyDescpText,
                )
              ],
            ),
          ),
          const Spacer(),
          const ServiceBox(
              descp: WebStrings.appDeveloperDescp,
              title: WebStrings.appDeveloper,
              icon: WebIcons.pcIcon),
          const SizedBox(width: WebSize.s40),
          const ServiceBox(
              descp: WebStrings.uiDesignerDescp,
              title: WebStrings.uiDesigner,
              icon: WebIcons.brushIcon)
        ],
      ),
    );
  }
}
