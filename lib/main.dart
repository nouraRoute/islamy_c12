import 'package:flutter/material.dart';
import 'package:islamy_c12/ui/home_screen.dart';
import 'package:islamy_c12/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routName: (_) => SplashScreen(),
        HomeScreen.routName: (_) => HomeScreen()
      },
    );
  }
}
