import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/text_gradient.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      constraints: const BoxConstraints(minHeight: 700.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'ABOUT ME',
                style:
                    GoogleFonts.lato(textStyle: const TextStyle(fontSize: 25)),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Container(
                height: 3,
                color: Colors.grey,
              )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenWidth / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, I\'m Shreya.',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                minRadius: 20,
                maxRadius: 68,
                backgroundImage: AssetImage(
                  'assets/images/shreya_about.jpg',
                ),
              ),
            ],
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return textGradient.createShader(bounds);
                  },
                  child: Text(
                    'A little bit about myself',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Problem solver, well-organised, and a quick learner with high attention to detail. Fan of movies, books, and coding of course.\nStrong technical, communication and leadership skills.\nInterested in the development industry and working on ambitious projects with interesting people.\nA student of B.Sc. CSIT from Biratnagar.',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
