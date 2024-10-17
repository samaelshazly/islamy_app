import 'package:flutter/material.dart';
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class setting_tap extends StatefulWidget {
  setting_tap({super.key});

  @override
  State<setting_tap> createState() => _setting_tapState();
}

class _setting_tapState extends State<setting_tap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeManeger>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SwitchListTile.adaptive(
              title: Text(
                'Dark theme',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 18),
              ),
              activeColor: AppColors.gold,
              inactiveTrackColor: Colors.grey,
              value: provider.isDark,
              onChanged: (value) {
                provider
                    .changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
              }),
          ListTile(
              title: Text(
                'language',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 18),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.gold),
                    borderRadius: BorderRadius.circular(22)),
                padding: EdgeInsets.symmetric(horizontal: 9),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: provider.localCode,
                    borderRadius: BorderRadius.circular(22),
                    items: [
                      DropdownMenuItem(
                        value: 'en',
                        child: Text(
                          'English',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                      ),
                      DropdownMenuItem(
                        child: Text(
                          'Arabic',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                        value: 'ar',
                      )
                    ],
                    onChanged: (value) {
               if(value!=null)    {   provider.changeAppLocal(value);
              }
                    },
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
