import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home_screen.dart';
import 'package:islamy_app/ui/splash_screen.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routName: (_) => SplashScreen(),
        HomeScreen.routName: (_) => HomeScreen()
      },
    );
  }
}
