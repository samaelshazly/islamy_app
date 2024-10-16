import 'package:flutter/material.dart';
import 'package:islamy_app/common/image.dart';
import 'package:islamy_app/ui/taps/hadeth_tap.dart';
import 'package:islamy_app/ui/taps/quran_tap.dart';
import 'package:islamy_app/ui/taps/radio_tap.dart';
import 'package:islamy_app/ui/taps/sebha_tap.dart';
import 'package:islamy_app/ui/taps/setting_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int index = 0;
  List<Widget> tapslist = [
    hadeth_tap(),
    Quran_tap(),
    radio_tap(),
    sebha_tap(),
    setting_tap()
  ];

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? AppsImage.bg
                      : AppsImage.darkbg),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('islamy'),
        ),
        body: tapslist[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppsImage.hadeth)),
                  label: 'hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppsImage.quran)), label: 'quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppsImage.radio)), label: 'radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppsImage.sepha)), label: 'sebha'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'setting')
            ]),
      ),
    );
  }
}
