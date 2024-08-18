import 'package:flutter/material.dart';
import 'package:portfolio/constants/screen_size.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/desktop_about.dart';
import 'package:portfolio/widgets/desktop_header.dart';
import 'package:portfolio/widgets/desktop_home.dart';
import 'package:portfolio/widgets/desktop_skills.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/mobile_about.dart';
import 'package:portfolio/widgets/mobile_drawer.dart';
import 'package:portfolio/widgets/mobile_header.dart';
import 'package:portfolio/widgets/mobile_home.dart';
import 'package:portfolio/widgets/mobile_skills.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            key: scaffoldKey,
            endDrawer: constraints.maxWidth >= minDesktopWidth
                ? null
                : MobileDrawer(
                    onNavItemTap: (int navIndex) {
                      scaffoldKey.currentState!.closeEndDrawer();
                      scrollToSection(navIndex);
                    },
                  ),
            body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: scrollController,
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        //Home Screen
                        SizedBox(
                          key: navbarKeys[0],
                          width: double.infinity,
                          child: constraints.maxWidth >= minDesktopWidth
                              ? const DesktopHome()
                              : const MobileHome(),
                        ),

                        //About
                        Container(
                          key: navbarKeys[1],
                          child: constraints.maxWidth >= minDesktopWidth
                              ? const DesktopAbout()
                              : const MobileAbout(),
                        ),

                        //Skills
                        Container(
                          key: navbarKeys[2],
                          child: constraints.maxWidth >= minDesktopWidth
                              ? const DesktopSkills()
                              : const MobileSkills(),
                        ),

                        //Contact
                        Contact(
                          key: navbarKeys[3],
                        ),

                        const SizedBox(height: 30),

                        const Footer(),
                      ],
                    ),
                  ),
                  constraints.maxWidth >= minDesktopWidth
                      ? DesktopHeader(
                          onNavItemTap: (int navIndex) {
                            scrollToSection(navIndex);
                          },
                          onLogoTap: (int navIndex) {
                            scrollToSection(navIndex);
                          },
                        )
                      : MobileHeader(
                          onLogoTap: (int navIndex) {
                            scrollToSection(navIndex);
                          },
                          onMenuTap: () {
                            scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }
}
