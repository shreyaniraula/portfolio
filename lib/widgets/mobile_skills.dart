import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/widgets/mobile_skills_widget.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 10.0,
      ),
      height: screenHeight,
      width: screenWidth,
      constraints: const BoxConstraints(minHeight: 700.0),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Text(
              'My main area of interest is Backend Development using NodeJs.\nI also excel in the Frontend using Flutter.\nApart from this, I have strong knowledge the technologies listed below which enables me to contribute to various projects.\nAlso, I am always ready to learn new technologies.',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),

            SizedBox(
              width: 300,
              height: 300,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    return MobileSkillsWidget(
                        skillImage: skills[index]['img'],
                        skillTitle: skills[index]['title']);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
