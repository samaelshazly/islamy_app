import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_theme.dart';
import 'package:islamy_app/ui/taps/screens/home_screen.dart';
import 'package:islamy_app/ui/taps/screens/quran_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the ro
  //ot of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lighttheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        QuranScreen.routName: (context) => QuranScreen()
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
