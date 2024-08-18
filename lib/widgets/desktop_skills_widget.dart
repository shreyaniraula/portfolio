import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopSkillsWidget extends StatelessWidget {
  final String skillImage;
  final String skillTitle;
  const DesktopSkillsWidget({
    super.key,
    required this.skillImage,
    required this.skillTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFF282C35),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                skillImage,
              ),
            ),
            Text(
              skillTitle,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
