import 'package:flutter/material.dart';
import 'package:portfolio/constants/navbar_content.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ),
          ),
          for (int i = 0; i < navbarIcons.length; i++)
            ListTile(
              leading: Icon(
                navbarIcons[i],
              ),
              onTap: () {
                onNavItemTap(i);
              },
              title: Text(
                navbarItems[i],
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: TextStyle(
                  fontSize: 20, color: Theme.of(context).colorScheme.primary),
            ),
        ],
      ),
    );
  }
}
