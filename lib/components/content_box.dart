import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/styling.dart';
import 'package:my_portfolio/models/content_box_model.dart';

class ContentBox extends StatelessWidget {
  final ContentBoxModel contentBox;
  final int numbers;
  const ContentBox(
      {super.key, required this.contentBox, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 32),
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
          color: WebColors.brownColor.withOpacity(0.05),
          border: Border.all(color: WebColors.brownColor.withOpacity(0.15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '0${numbers.toString()}',
            style: TextStyling.numberingStyle,
          ),
          const SizedBox(height: 6),
          Text(
            contentBox.title,
            style: TextStyling.subHeading1,
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 400,
            child: Text(
              contentBox.description,
              style: TextStyling.subHeading2,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              SvgPicture.asset(WebIcons.arrowIcon),
              const SizedBox(width: 12),
              Text(
                contentBox.btnText,
                style: TextStyling.numberingStyle
                    .copyWith(color: WebColors.brownColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
