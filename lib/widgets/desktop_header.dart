import 'package:flutter/material.dart';
import 'package:portfolio/constants/font_styles.dart';
import 'package:portfolio/constants/navbar_content.dart';
import 'package:portfolio/constants/text_gradient.dart';
import 'package:portfolio/widgets/name_logo.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader(
      {super.key, required this.onNavItemTap, required this.onLogoTap});
  final Function(int) onNavItemTap;
  final Function(int) onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(
              onTap: () {
                onLogoTap(0);
              },
            ),
            Row(
              children: [
                for (int i = 0; i < navbarItems.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: TextButton(
                      onPressed: () {
                        onNavItemTap(i);
                      },
                      child: ShaderMask(
                        shaderCallback: (bounds) {
                          return textGradient.createShader(bounds);
                        },
                        child: Text(
                          navbarItems[i],
                          style: navbarTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
