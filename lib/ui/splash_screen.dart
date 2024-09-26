import 'package:flutter/material.dart';
import 'package:islamy_c12/ui/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.of(context).pushNamed(HomeScreen.routName),
    );
    return Image.asset(
      'assets/images/splash.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
