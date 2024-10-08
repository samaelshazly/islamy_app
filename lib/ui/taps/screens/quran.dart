import 'package:flutter/material.dart';
import 'package:islamy_app/common/image.dart';
import 'package:islamy_app/ui/taps/quran_tap.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({super.key});
  static const String routName = 'quranscreen';

  @override
  Widget build(BuildContext context) {
    QuranModel quran_model =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppsImage.bg), fit: BoxFit.cover)),
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Center(
                    child: Text(
                  quran_model.name,
                  style: Theme.of(context).textTheme.titleMedium,
                )),
                Divider()
              ],
            ),
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
