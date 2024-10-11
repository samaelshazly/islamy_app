import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';

class AppThemes {
  static ThemeData lighttheme = ThemeData(
      dividerTheme: DividerThemeData(color: AppColors.mainlightcolor),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.mainlightcolor,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(
        titleSmall: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: Color(0xff242424)),
          titleMedium: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Color(0xff242424))),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.mainlightcolor,
          selectedItemColor: AppColors.dark,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(iconTheme:IconThemeData(color: AppColors.dark) ,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Color(0xff242424)),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent),
      primaryColor: AppColors.mainlightcolor,
      scaffoldBackgroundColor: Colors.transparent);

  static ThemeData darktheme = ThemeData(
     dividerTheme: DividerThemeData(color: AppColors.gold),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.maindarkcolor,
          onPrimary: AppColors.maindarkcolor,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.maindarkcolor,
          selectedItemColor: AppColors.gold,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent),
      primaryColor: AppColors.maindarkcolor,
      scaffoldBackgroundColor: Colors.transparent);
}
