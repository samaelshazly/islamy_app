import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/common/image.dart';

class sebha_tap extends StatefulWidget {
  const sebha_tap({super.key});

  @override
  State<sebha_tap> createState() => _sebha_tapState();
}

class _sebha_tapState extends State<sebha_tap> {
  int counter = 0;
  int index = 0;
  addo() {
    setState(() {
      counter++;
      if (counter == 34 && index == 0) {
        index = 1;
        counter = 0;
      } else if (index == 1 && counter == 34) {
        index = 2;
        counter = 0;
      } else if (index == 2 && counter == 34) {
        index = 3;
        counter = 0;
      } else if (index == 3 && counter == 34) {
        index = 0;
        counter = 0;
      }
    });
  }

  List<String> tasabeh = [];
  @override
  void initState() {
    index = 0;
    tasabeh = ['سبحان الله ', 'الحمدلله', 'الله اكبر', 'استغفر الله'];
    super.initState();
  }

  String selcted = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Expanded(
          child: Column(
            children: [
              Image(
                  image: AssetImage(Theme.of(context).colorScheme.brightness ==
                          Brightness.light
                      ? AppsImage.headsebhalight
                      : AppsImage.headsebhadark)),
              Image.asset(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? AppsImage.bodysebhalight
                    : AppsImage.bodysebhadark,
              ),
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                  decoration: BoxDecoration(
                      color:
                          Theme.of(context).colorScheme.brightness == Brightness
                              ? AppColors.mainlightcolor
                              : AppColors.maindarkcolor),
                  child: Text(counter.toString())),
              ElevatedButton(
                  onPressed: () {
                    addo();
                  },
                  child: Text(
                    tasabeh[index],
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
