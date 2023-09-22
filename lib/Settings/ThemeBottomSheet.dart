import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_rana/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../Home/myTheme.dart';


class ThemeBottomSheet extends StatefulWidget {


  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: (){
                provider.ChangeTheme('light') ;

              },
              child: provider.isDarkMode()?
              getUnSelectedItemWidget(AppLocalizations.of(context)!.light)
                  :
              getSelectedItemWidget(AppLocalizations.of(context)!.light)
          ),
          InkWell(
              onTap: () {
                provider.ChangeTheme('dark') ;
              },
              child: provider.isDarkMode()?
              getSelectedItemWidget(AppLocalizations.of(context)!.dark)
                  :
              getUnSelectedItemWidget(AppLocalizations.of(context)!.dark)

          ),
        ],
      ),
    );

  }

  Widget getSelectedItemWidget(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: MyTheme.yellowColor
              )),
          Icon(Icons.check,color: MyTheme.yellowColor,)
        ],
      ),
    );
  }
  Widget getUnSelectedItemWidget(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }


}
