import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_theme.dart';
import 'package:islamy_c12/providers/theme_provider.dart';
import 'package:islamy_c12/ui/screens/hadeeth_screen.dart';
import 'package:islamy_c12/ui/screens/home_screen.dart';
import 'package:islamy_c12/ui/screens/quran_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).appThemeMode,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        QuranScreen.routName: (_) => QuranScreen(),
        HadeethDetailsScreen.routName: (_) => HadeethDetailsScreen()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
