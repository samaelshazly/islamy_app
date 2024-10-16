import 'package:flutter/material.dart';
import 'package:islamy_app/common/image.dart';
import 'package:islamy_app/ui/taps/hadeth_tap.dart';

class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});
  static const String routName = 'hadethscreen';
  @override
  Widget build(BuildContext context) {
    HadethModel hadeth_Model =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    Theme.of(context).colorScheme.brightness == Brightness.light
                        ? AppsImage.bg
                        : AppsImage.darkbg),
                fit: BoxFit.cover)),
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Center(
                  child: Text(
                hadeth_Model.name,
                style: Theme.of(context).textTheme.titleMedium,
              )),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    hadeth_Model.content,
                    style: Theme.of(context).textTheme.titleSmall,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(25)),
          ),
          appBar: AppBar(
            title: const Text('islamy'),
          ),
        ));
  }
}
