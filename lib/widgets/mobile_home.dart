import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 700.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/shreya_home.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Mobile',
                      textStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
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
                      'Application Developer',
                      textStyle: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
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
                          fontSize: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        'assets/images/facebook.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        'assets/images/instagram.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        'assets/images/github.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        'assets/images/linkedin.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcATop),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
