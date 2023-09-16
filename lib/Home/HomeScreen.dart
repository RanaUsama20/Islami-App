import 'package:flutter/material.dart';
import 'package:islami_rana/Hadeth/hadeth_tab.dart';
import 'package:islami_rana/Quran/quran_tab.dart';
import 'package:islami_rana/Radio/radio_tab.dart';
import 'package:islami_rana/Sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedIndex = 0;
 List<Widget> tabs = [
   QuranTab(),HadethTab(),SebhaTab(),RadioTab()
 ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/default_background.png',
        width: double.infinity,
         height: double.infinity,
            fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.titleLarge),

          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex =  index;
                  setState(() {

                  });
                },
                items:[
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.quran ,
                      icon: ImageIcon(AssetImage('assets/images/quran_icon.png'))),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.hadeth ,
                      icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png'))),
                  BottomNavigationBarItem(
                      label:AppLocalizations.of(context)!.sebha ,
                      icon: ImageIcon(AssetImage('assets/images/sebha_icon.png'))),
                  BottomNavigationBarItem(
                      label: AppLocalizations.of(context)!.radio ,
                      icon: ImageIcon(AssetImage('assets/images/radio_icon.png'))),
                ]),
          ),
          body: tabs[selectedIndex],
        ),

      ],
    );

  }
}
