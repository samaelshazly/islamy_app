import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/common/image.dart';
import 'package:islamy_app/ui/taps/quran_tap.dart';

class QuranScreen extends StatefulWidget {
  QuranScreen({super.key});
  static const String routName = 'quranscreen';

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<String> surascontent = [];

  @override
  Widget build(BuildContext context) {
    QuranModel quran_model =
        ModalRoute.of(context)!.settings.arguments as QuranModel;
    if (surascontent.isEmpty) loadsuracontent(quran_model.index);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppsImage.bg), fit: BoxFit.cover)),
        child:   Scaffold(
          body:   Container(
            padding: EdgeInsets.all(15),
            child:   Column(
              children: [
                Center(
                    child: Text(
                  quran_model.name,
                  style: Theme.of(context).textTheme.titleMedium,
                )),
             Divider(),
                surascontent.isEmpty
                    ? Expanded(
                        child: Center(child: CircularProgressIndicator()))
                    : Expanded(
                        child: ListView.builder(itemCount: surascontent.length,
                          itemBuilder: (context, index) => Center(
                            child: Text(
                              surascontent[index],
                              style: Theme.of(context).textTheme.titleSmall,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
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

  Future<void> loadsuracontent(int index) async {
    String data = await rootBundle.loadString('assets/quran/${index + 1}.txt');
    surascontent = data.split('\n');
    setState(() {});
  }
}
