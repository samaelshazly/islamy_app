import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_theme.dart';
import 'package:islamy_app/provider/theme_provider.dart';
import 'package:islamy_app/ui/taps/screens/hadeth_screen.dart';
import 'package:islamy_app/ui/taps/screens/home_screen.dart';
import 'package:islamy_app/ui/taps/screens/quran_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeManeger(),child: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the ro
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lighttheme,
      darkTheme: AppThemes.darktheme,
      themeMode:Provider.of<ThemeManeger>(context).appThemeMode,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (_) => HomeScreen(),
        QuranScreen.routName: (context) => QuranScreen(),
        HadethScreen.routName: (context) => HadethScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
