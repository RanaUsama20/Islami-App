import 'package:flutter/material.dart';

import 'myTheme.dart';


class itemSuraDetails extends StatelessWidget {
  String content;
  int index;
  itemSuraDetails({required this.content,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
        '$content {${index+1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall);
  }
}
