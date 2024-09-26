import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_theme.dart';
import 'package:islamy_c12/ui/screens/home_screen.dart';
import 'package:islamy_c12/ui/screens/quran_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        QuranScreen.routName: (_) => QuranScreen()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
