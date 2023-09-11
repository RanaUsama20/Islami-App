import 'package:flutter/material.dart';
import 'package:islami_rana/HomeScreen.dart';
import 'package:islami_rana/SuraDetailsScreen.dart';
import 'package:islami_rana/myTheme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     title: 'Islami App',
     debugShowCheckedModeBanner: false,
     locale: Locale('English'),
     initialRoute: HomeScreen.routeName,
     routes: {
       HomeScreen.routeName : (context) => HomeScreen(),
       SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
     },
     theme: MyTheme.lightTheme,
   );
  }

}