import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/text_gradient.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Made by ',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(fontSize: 15),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return textGradient.createShader(bounds);
            },
            child: Text(
              'Shreya Niraula ',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          Text(
            'with Flutter 3.19.3',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
