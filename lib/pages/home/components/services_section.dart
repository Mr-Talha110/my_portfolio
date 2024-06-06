import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
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
      mobile: (_) => const ServicesSectionDesktop(
        isMobile: true,
      ),
    );
  }
}

class ServicesSectionDesktop extends StatelessWidget {
  final bool isMobile;
  const ServicesSectionDesktop({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: isMobile ? WebSize.s24 : WebSize.s104,
          right: isMobile ? WebSize.s24 : WebSize.s104,
          bottom: WebSize.s32),
      padding: const EdgeInsets.symmetric(vertical: WebSize.s48),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          SizedBox(
            width: WebSize.s474,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(WebStrings.services,
                    style: TextStyling.orangeSmallText
                        .copyWith(fontSize: WebSize.s18)),
                const SizedBox(height: WebSize.s8),
                SelectableText(
                  WebStrings.bestSolution,
                  style: TextStyling.blueTextHome
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(height: WebSize.s32),
                const SelectableText(
                  WebStrings.areYourPro,
                  style: TextStyling.descpText,
                ),
                const SizedBox(height: WebSize.s8),
                const SelectableText(
                  WebStrings.rightPlace,
                  style: TextStyling.greyDescpText,
                )
              ],
            ),
          ).paddingBottom(WebSize.s50),
          Visibility(
              visible: !isMobile, child: const SizedBox(width: WebSize.s68)),
          isMobile
              ? const Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    children: [
                      ServiceBox(
                          descp: WebStrings.appDeveloperDescp,
                          title: WebStrings.appDeveloper,
                          icon: WebIcons.pcIcon),
                      SizedBox(width: WebSize.s10),
                      ServiceBox(
                          descp: WebStrings.uiDesignerDescp,
                          title: WebStrings.uiDesigner,
                          icon: WebIcons.brushIcon)
                    ],
                  ),
                )
              : const Wrap(
                  children: [
                    ServiceBox(
                        descp: WebStrings.appDeveloperDescp,
                        title: WebStrings.appDeveloper,
                        icon: WebIcons.pcIcon),
                    SizedBox(width: WebSize.s40),
                    ServiceBox(
                        descp: WebStrings.uiDesignerDescp,
                        title: WebStrings.uiDesigner,
                        icon: WebIcons.brushIcon)
                  ],
                )
        ],
      ),
    );
  }
}
