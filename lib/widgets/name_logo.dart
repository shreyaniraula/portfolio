import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Shreya',
        style: GoogleFonts.playfairDisplay(
            textStyle: const TextStyle(fontSize: 30)),
      ),
    );
  }
}
