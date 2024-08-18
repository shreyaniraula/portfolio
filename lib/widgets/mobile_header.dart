import 'package:flutter/material.dart';
import 'package:portfolio/widgets/name_logo.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, required this.onLogoTap, this.onMenuTap});

  final Function(int) onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(
              onTap: () {
                onLogoTap(0)!;
              },
            ),
            IconButton(
              onPressed: onMenuTap,
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
