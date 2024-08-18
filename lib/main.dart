import 'package:flutter/material.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/theme/darktheme.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      title: 'Shreya Niraula',
      home: const HomePage(),
    );
  }
}
