import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/common/image.dart';
import 'package:islamy_app/ui/taps/screens/hadeth_screen.dart';

class hadeth_tap extends StatefulWidget {
  hadeth_tap({super.key});

  @override
  State<hadeth_tap> createState() => _hadeth_tapState();
}

class _hadeth_tapState extends State<hadeth_tap> {
  List<HadethModel> hadethlist = [];

  @override
  Widget build(BuildContext context) {
    if (hadethlist.isEmpty) loadhadeth();
    return Column(children: [
      Image.asset(
        AppsImage.hadithheader,
        height: MediaQuery.of(context).size.height * .25,
      ),
      Divider(),
      Text('Hadeths ', style: Theme.of(context).textTheme.titleMedium),
      Divider(),
      Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(HadethScreen.routName,
                        arguments: hadethlist[index]);
                  },
                  child: Text(
                    hadethlist[index].name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ))),
          itemCount: hadethlist.length,
          separatorBuilder: (context, index) {
            return Divider(
              color: Theme.of(context).primaryColor,
            );
          },
        ),
      )
    ]);
  }

  loadhadeth() async {
    List<HadethModel> hadethmodellist = [];
    String data = await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> _hadethlist = data.trim().split('#');
    _hadethlist.removeWhere((element) => element.trim().isEmpty);
    for (int i = 0; i < _hadethlist.length; i++) {
      int index = _hadethlist[i].trim().indexOf('\n');
      String name = _hadethlist[i].trim().substring(0, index);
      String content = _hadethlist[i].trim().substring(index + 1);
      hadethmodellist.add(HadethModel(name: name, content: content));
    }
    hadethlist = hadethmodellist;
    setState(() {});
  }
}

class HadethModel {
  String name;
  String content;
  HadethModel({required this.name, required this.content});
}
