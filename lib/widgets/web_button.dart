import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants/constants.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/constants/styling.dart';

class WebButton extends StatelessWidget {
  final Color? bgColor;
  final String? title;
  final Color? textColor;
  final bool noElevation;
  final bool isIcon;
  final String? icon;
  final Color? borderColor;
  const WebButton(
      {super.key,
      this.icon,
      this.borderColor,
      this.bgColor,
      this.isIcon = false,
      this.title,
      this.textColor,
      this.noElevation = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          elevation: WidgetStatePropertyAll(noElevation ? 0 : 1.0),
          side: WidgetStatePropertyAll(
              BorderSide(color: borderColor ?? WebColors.transparent)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(WebSize.s6),
            ),
          ),
          padding: const WidgetStatePropertyAll(EdgeInsets.all(WebSize.s20)),
          backgroundColor:
              WidgetStatePropertyAll(bgColor ?? WebColors.transparent)),
      child: Row(
        children: [
          Visibility(
              visible: isIcon,
              child: Row(
                children: [
                  SvgPicture.asset(icon ?? ''),
                  const SizedBox(width: WebSize.s6)
                ],
              )),
          Text(title ?? '',
              style: TextStyling.descpText
                  .copyWith(color: textColor ?? WebColors.white)),
        ],
      ),
      onPressed: () {},
    );
  }
}
