import 'package:flutter/material.dart';
import 'package:islami_rana/Home/HomeScreen.dart';
import 'package:islami_rana/Quran/SuraDetailsScreen.dart';
import 'package:islami_rana/Hadeth/hadethDetailsScreen.dart';
import 'package:islami_rana/Home/myTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_rana/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    // TODO: implement build
   return MaterialApp(
     title: 'Islami App',
     debugShowCheckedModeBanner: false,
     locale: Locale(provider.appLanguage),
     localizationsDelegates: AppLocalizations.localizationsDelegates,
     supportedLocales: AppLocalizations.supportedLocales,
     initialRoute: HomeScreen.routeName,
     routes: {
       HomeScreen.routeName : (context) => HomeScreen(),
       SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
       HadethDetailsScreen.routeName : (context) => HadethDetailsScreen(),
     },
     theme: MyTheme.lightTheme,
     darkTheme: MyTheme.darkTheme,
     themeMode: provider.appTheme,
   );
  }

}