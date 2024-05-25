import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/extensions/padding.dart';
import 'package:my_portfolio/pages/home/provider/home_controller.dart';

import '../../../constants/constants.dart';
import '../../../constants/sizes.dart';
import 'content_box.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            ...List.generate(
              AssetRef.clientLogos.length,
              (index) => Image.asset(
                AssetRef.clientLogos[index],
                height: WebSize.s24,
              ).paddingAll(WebSize.s36),
            )
          ],
        ).paddingHorizontal(WebSize.s100),
        const SizedBox(height: WebSize.s80),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                HomeController().boxList.length,
                (index) => ContentBox(
                  numbers: index + 1,
                  contentBox: HomeController().boxList[index],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: WebSize.s160),
      ],
    );
  }
}
