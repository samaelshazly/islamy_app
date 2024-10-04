import 'package:flutter/material.dart';
import 'package:islamy_app/common/image.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'homescreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppsImage.bg),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppsImage.hadeth)),
              label: 'hadeth'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppsImage.quran)),
              label: 'quran'), BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppsImage.radio)),
              label: 'radio'), BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppsImage.sepha)),
              label: 'sebha')
        ]),
      ),
    );
  }
}
