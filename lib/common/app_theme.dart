import 'package:flutter/material.dart';
import 'package:islamy_c12/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      dividerTheme: DividerThemeData(
        color: AppColors.mainLightColor,
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.mainLightColor,
          onPrimary: Colors.white,
          secondary: AppColors.black,
          onSecondary: AppColors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: AppColors.mainLightColor,
          onSurface: Colors.white),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: AppColors.black),
          titleSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.black),
          titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: AppColors.black)),
      canvasColor: AppColors.mainLightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: AppColors.mainLightColor,
          selectedItemColor: AppColors.black,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
          foregroundColor: AppColors.black,
          iconTheme: IconThemeData(color: Colors.red),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: AppColors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColors.mainLightColor,
      scaffoldBackgroundColor: Colors.transparent);
  static ThemeData darkTheme = ThemeData(
      dividerTheme: DividerThemeData(
        color: AppColors.goldColor,
      ),
      dividerColor: AppColors.goldColor,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.mainDarkColor,
          onPrimary: AppColors.mainDarkColor,
          secondary: Colors.white,
          onSecondary: AppColors.goldColor,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: AppColors.goldColor),
          titleSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.goldColor),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white)),
      canvasColor: AppColors.mainDarkColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: AppColors.mainDarkColor,
          selectedItemColor: AppColors.goldColor,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0),
      primaryColor: AppColors.mainDarkColor,
      scaffoldBackgroundColor: Colors.transparent);
}
