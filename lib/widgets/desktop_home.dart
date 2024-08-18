import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants/links.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return SizedBox(
      //contains text and image
      height: 900,
      width: screenWidth,
      child: Row(
        //contains text and image
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Mobile\nApplication Developer',
                    textStyle: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
              AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flutter | NodeJs',
                    textStyle: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(Links.facebook)),
                      child: SvgPicture.asset(
                        'assets/images/facebook.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(Links.instagram)),
                      child: SvgPicture.asset(
                        'assets/images/instagram.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(Links.github)),
                      child: SvgPicture.asset(
                        'assets/images/github.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(Links.linkedin)),
                      child: SvgPicture.asset(
                        'assets/images/linkedin.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/shreya_home.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
