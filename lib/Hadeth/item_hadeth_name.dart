import 'package:flutter/material.dart';
import 'hadethDetailsScreen.dart';
import 'hadeth_tab.dart';

class itemHadethName extends StatelessWidget {
  Hadeth hadeth;
  itemHadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
            arguments: hadeth
        );
      },
      child: Text(
          hadeth.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
