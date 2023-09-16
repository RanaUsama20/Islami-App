import 'package:flutter/material.dart';
import 'package:islami_rana/Quran/SuraDetailsScreen.dart';

class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        arguments: SuraNamesArgs(name: name, index: index));
    },
      child: Text(
          name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
