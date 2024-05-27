import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/constants/web_strings.dart';
import 'package:my_portfolio/pages/home/models/blog_model.dart';
import 'package:my_portfolio/widgets/blog.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogsSection extends StatelessWidget {
  const BlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const BlogSectionDesktop(),
      mobile: (_) => const BlogSectionDesktop(
        isMobile: true,
      ),
    );
  }
}

class BlogSectionDesktop extends StatelessWidget {
  final bool isMobile;
  const BlogSectionDesktop({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isMobile
            ? Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: blogChildren(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: blogChildren(),
              ),
        const SizedBox(height: WebSize.s48),
        Align(
          alignment: isMobile ? Alignment.center : Alignment.topLeft,
          child: Wrap(
            children: [
              ...List.generate(
                blogs.length,
                (index) => Blog(
                  noMargin: isMobile,
                  blog: blogs[index],
                  isLastElement: index == blogs.length - 1,
                ),
              )
            ],
          ),
        ),
      ],
    ).paddingSymmetric(
        horizontal: isMobile ? WebSize.s24 : WebSize.s104,
        vertical: WebSize.s48);
  }
}

//******************DUMMY BLOGS***********************//
final List<BlogModel> blogs = [
  BlogModel(
      description: WebStrings.makeMaintainWork,
      image: AssetRef.image1,
      title: 'October 9th, 2022 — 7 min read'),
  BlogModel(
      description: WebStrings.userEffect,
      image: AssetRef.image2,
      title: 'October 9th, 2022 — 7 min read'),
  BlogModel(
      description: WebStrings.reactHooks,
      image: AssetRef.image3,
      title: 'October 9th, 2022 — 7 min read')
];

List<Widget> blogChildren() {
  return [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(WebStrings.blog, style: TextStyling.orangeLightText),
        const SizedBox(height: WebSize.s8),
        const Text(WebStrings.fintMyLatestWriting,
                style: TextStyling.blueTextHome)
            .paddingBottom(WebSize.s24)
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(WebStrings.seeFullBlog, style: TextStyling.orangeLightText),
        const SizedBox(width: WebSize.s12),
        SvgPicture.asset(WebIcons.rightCircleIcon, width: WebSize.s20),
      ],
    ).paddingBottom(WebSize.s24)
  ];
}
