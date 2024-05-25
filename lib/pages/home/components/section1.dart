import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';
import '../../../constants/styling.dart';
import '../../../constants/web_strings.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: WebSize.s100 * 4),
        Text(WebStrings.mainHeading,
            textAlign: TextAlign.center, style: TextStyling.mainHeadingStyle),
        const SizedBox(height: WebSize.s16),
        Text(WebStrings.mainHeadingDescp,
            textAlign: TextAlign.center,
            style: TextStyling.mainHeadingDescpStyle),
        const SizedBox(height: WebSize.s100 + 20),
      ],
    );
  }
}
