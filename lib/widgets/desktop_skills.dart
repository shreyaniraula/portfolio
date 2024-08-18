import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/widgets/desktop_skills_widget.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      width: screenWidth / 1.3,
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'SKILLS',
                style:
                    GoogleFonts.lato(textStyle: const TextStyle(fontSize: 30)),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                  child: Container(
                height: 3,
                color: Colors.grey,
              )),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'My main area of interest is Backend Development using NodeJs.\nI also excel in the Frontend using Flutter.\nApart from this, I have a basic understanding of the technologies mentioned here which enables me to contribute to various projects.\nAlso, I am always ready to learn new technologies.',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return DesktopSkillsWidget(
                          skillImage: skills[index]['img'],
                          skillTitle: skills[index]['title']);
                    }),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
