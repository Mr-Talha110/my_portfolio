import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizes.dart';
import 'package:my_portfolio/pages/home/components/about_section.dart';
import 'package:my_portfolio/pages/home/components/footer.dart';
import 'package:my_portfolio/pages/home/components/interested_section.dart';
import 'package:my_portfolio/pages/home/components/intro_section.dart';
import 'package:my_portfolio/pages/home/components/navbar.dart';
import 'package:my_portfolio/pages/home/components/services_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: WebSize.s1920),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                NavBar(),
                IntroSection(),
                AboutSection(),
                ServicesSection(),
                // BlogsSection(),
                InterestedSection(),
                Footer()
              ],
            ),
          ),
        ));
  }
}
