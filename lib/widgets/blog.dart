import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/pages/home/models/blog_model.dart';

class Blog extends StatelessWidget {
  final BlogModel blog;
  final bool isLastElement;
  final bool noMargin;
  const Blog(
      {super.key,
      required this.blog,
      this.isLastElement = false,
      this.noMargin = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: noMargin
              ? 0
              : isLastElement
                  ? 0
                  : WebSize.s40,
          bottom: WebSize.s40),
      width: WebSize.s370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(blog.image, width: WebSize.s370),
          const SizedBox(height: WebSize.s32),
          Text(
            blog.title,
            style: TextStyling.navBarText.copyWith(
              color: WebColors.dividerGrey,
              fontFamily: WebFonts.satoshiRegular,
            ),
          ),
          const SizedBox(height: WebSize.s8),
          Text(
            blog.description,
            style: TextStyling.blueTitleText.copyWith(
              color: WebColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
