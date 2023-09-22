import 'package:flutter/material.dart';
import 'package:islami_rana/Home/myTheme.dart';
import 'package:islami_rana/Quran/SuraDetailsScreen.dart';
import 'package:islami_rana/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        arguments: SuraNamesArgs(name: name, index: index));
    },
      child: Text(
          name,
          textAlign: TextAlign.center,
          style: provider.isDarkMode()?
          Theme.of(context).textTheme.titleSmall!.copyWith(
            color: MyTheme.whiteColor
          )
        :
          Theme.of(context).textTheme.titleSmall),
    );
  }
}
