import 'package:flutter/material.dart';
import 'package:islamy_app/common/image.dart';

class radio_tap extends StatelessWidget {
  const radio_tap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppsImage.radiobody,
            ),
            Text(
              'اذاعه القران الكريم',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous),
                Icon(Icons.play_arrow),
                Icon(Icons.skip_next)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
