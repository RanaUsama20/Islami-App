import 'package:flutter/material.dart';

import '../Home/myTheme.dart';


class itemHadethDetails extends StatelessWidget {
  String content;

  itemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
        content,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall);
  }
}
