import 'package:flutter/material.dart';
import 'package:islami_rana/hadeth_tab.dart';
import 'package:islami_rana/quran_tab.dart';
import 'package:islami_rana/radio_tab.dart';
import 'package:islami_rana/sebha_tab.dart';

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
            title: Text('islami',
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
                      label: 'Quran' ,
                      icon: ImageIcon(AssetImage('assets/images/quran_icon.png'))),
                  BottomNavigationBarItem(
                      label: 'Hadeth' ,
                      icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png'))),
                  BottomNavigationBarItem(
                      label: 'Sebha' ,
                      icon: ImageIcon(AssetImage('assets/images/sebha_icon.png'))),
                  BottomNavigationBarItem(
                      label: 'Radio' ,
                      icon: ImageIcon(AssetImage('assets/images/radio_icon.png'))),
                ]),
          ),
          body: tabs[selectedIndex],
        ),

      ],
    );

  }
}
